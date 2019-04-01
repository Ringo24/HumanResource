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
	var mMarker = null;		// 마커 객체

	function go(lat, lng){
		var position = new daum.maps.LatLng(lat, lng);
		map.panTo(position);
		
		if (mMarker == null) {
			mMarker = new daum.maps.Marker({
			    map: map,
			    position: position			// 지도에 마커를 생성합니다 
			});
		} else {
			mMarker.setPosition(position);		// 마커 위치를 옮깁니다
		}
	}

	$(function() {
		var container = document.getElementById('map');		//지도를 담을 영역의 DOM 레퍼런스
		var mapCenter = new daum.maps.LatLng(37.569357, 126.986047);
		var options = { 	//지도를 생성할 때 필요한 기본 옵션
			center: mapCenter,	//지도의 중심좌표.
			level: 3		//지도의 레벨(확대, 축소 정도)
		};
		map = new daum.maps.Map(container, options);		 //지도 생성 및 객체 리턴
		
		$("#m_addr").change(function(e){
			var what = $(this).val();
			//if(e.keyCode == 13){
				$.ajax({
					url : "https://dapi.kakao.com/v2/local/search/address.json",
					data : {query : what},
					beforeSend : function(req){
						req.setRequestHeader("Authorization", "KakaoAK adbfc124b4b8faba06f34df8ae1a2187");
					},
					jsonpCallback : "?",
					success : function(data){
						var position = new daum.maps.LatLng(data.documents[0].y, data.documents[0].x);
					    map.panTo(position);
					}
				});
			//}
		});
	});
}