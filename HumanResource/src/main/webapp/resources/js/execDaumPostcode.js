function execDaumPostcode() {
	$("#addrSearch").click(function(){
	    new daum.Postcode({
	       oncomplete: function(data) {
	           // 팝업에서 검색결과 항목을 클릭했을때 실행할 코드를 작성하는 부분.
	
	    	   // 각 주소의 노출 규칙에 따라 주소를 조합한다.
	           // 내려오는 변수가 값이 없는 경우엔 공백('')값을 가지므로, 이를 참고하여 분기 한다.
	           var addr = ''; // 주소 변수
	           //사용자가 선택한 주소 타입에 따라 해당 주소 값을 가져온다.
	           if (data.userSelectedType === 'R') { // 사용자가 도로명 주소를 선택했을 경우
	               addr = data.roadAddress;
	           } else { // 사용자가 지번 주소를 선택했을 경우(J)
	               addr = data.jibunAddress;
	           }
	
	           // 우편번호와 주소 정보를 해당 필드에 넣는다.
	           $('#m_post').val(data.zonecode);
	           $("#m_addr").val(addr);
	           // 커서를 상세주소 필드로 이동한다.
	           $("#m_addrdetail").focus();
	        }
	    }).open();
	});
}

function exeDaumMap() {
	var map;				// 지도 객체
	var marker = null;		// 마커 객체
	var name = $('#companyName').text();
	var addr = $('#companyAddr').text();

	$(function() {
		var container = document.getElementById('map');		//지도를 담을 영역의 DOM 레퍼런스
		var mapCenter = new daum.maps.LatLng(37.569357, 126.986047);
		var options = { 	//지도를 생성할 때 필요한 기본 옵션
			center: mapCenter,	//지도의 중심좌표.
			level: 3		//지도의 레벨(확대, 축소 정도)
		};
		map = new daum.maps.Map(container, options);		 //지도 생성 및 객체 리턴
		
		// 주소-좌표 변환 객체를 생성합니다
		var geocoder = new daum.maps.services.Geocoder();
		
		// 주소로 좌표를 검색합니다
		geocoder.addressSearch(addr, function(result, status) {
			// 정상적으로 검색이 완료됐으면 
		     if (status === daum.maps.services.Status.OK) {
		        var coords = new daum.maps.LatLng(result[0].y, result[0].x);

		        // 결과값으로 받은 위치를 마커로 표시합니다
		        marker = new daum.maps.Marker({
		            map: map,
		            position: coords
		        });

		        // 인포윈도우로 장소에 대한 설명을 표시합니다
		        var infowindow = new daum.maps.InfoWindow({
		            content: '<div style="width:150px;text-align:center;padding:6px 0;">'+name+'</div>'
		        });
		        infowindow.open(map, marker);

		        // 지도의 중심을 결과값으로 받은 위치로 이동시킵니다
		        map.setCenter(coords);
		     }
		});
	});
}