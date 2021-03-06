function joinCheck(){
	var id = document.joinForm.m_id;
	var pw = document.joinForm.m_pw;
	var pw2 = document.joinForm.m_pw2;
	var name = document.joinForm.m_name;
	var email = document.joinForm.m_email;
	var bdate = document.joinForm.m_bdate;
	var phone = document.joinForm.m_phone;
	var schoolname = document.joinForm.m_schoolname;
	var schoolmajor = document.joinForm.m_schoolmajor;
	var bank = document.joinForm.m_bank;
	var account = document.joinForm.m_account;
	var accname = document.joinForm.m_accname;
	var post = document.joinForm.m_post;
	var addr = document.joinForm.m_addr;
	var addrdetail = document.joinForm.m_addrdetail;
	var station = document.joinForm.m_station;
	var intro = document.joinForm.m_intro;
	var photo = document.joinForm.m_photo;
	
	if (isEmpty(id) || containsHS(id) || lessThan(id, 4) || $("#joinIdCheckMsg").text()=="중복된 ID") {
		id.focus();
		return false;
	} else if (isEmpty(pw) || containsHS(pw) || lessThan(pw, 4)) {
		pw.focus();
		return false;
	} else if (notEquals(pw2, pw)) {
		pw2.focus();
		return false;
	} else if (isEmpty(name)) {
		name.focus();
		return false;
	} else if (isEmpty(email) || containsHS(email)) {
		email.focus();
		return false;
	} else if (isEmpty(bdate) || isNotNumber(bdate)) {
		bdate.focus();
		return false;
	} else if (isEmpty(phone) || isNotNumber(phone)) {
		phone.focus();
		return false;
	} else if (isEmpty(schoolname)) {
		schoolname.focus();
		return false;
	} else if (isEmpty(schoolmajor)) {
		schoolmajor.focus();
		return false;
	} else if (isEmpty(bank)) {
		bank.focus();
		return false;
	} else if (isEmpty(account) || isNotNumber(account)) {
		account.focus();
		return false;
	} else if (isEmpty(accname)) {
		accname.focus();
		return false;
	} else if (isEmpty(post)) {
		post.focus();
		return false;
	} else if (isEmpty(addr)) {
		addr.focus();
		return false;
	} else if (isEmpty(addrdetail)) {
		addrdetail.focus();
		return false;
	} else if (isEmpty(station)) {
		station.focus();
		return false;
	} else if (isEmpty(intro)) {
		intro.focus();
		return false;
	} else if (isEmpty(photo) || (isNotType(photo, "png") && isNotType(photo, "jpg") && isNotType(photo, "gif") && isNotType(photo, "jpeg"))) {
		photo.value = "";
		photo.focus();
		return false;
	}
}

//function connectIdCheck(){
//	$("#m_id").keyup(function(){
//		var id = $("#m_id").val();
//		$.ajax({
//			url : "/hr/member.id.check",
//			data : {m_id:id},	// {파라메터명:값, 파라메터명:값, ..}
//			success : function(data){
//				if (id.length == 0) {
//					$("#joinIdCheckMsg").text("ID 입력").css("color", "");
//				} else if (id.length < 4) {
//					$("#joinIdCheckMsg").text("4자 이상").css("color", "");
//				} else if ($(data).find("member").length == 1) {
//					$("#joinIdCheckMsg").text("중복된 ID").css("color", "red");
//				} else {
//					alert($(data).find("member").length);
//					$("#joinIdCheckMsg").text("OK.").css("color", "");
//				}
//			}
//		});
//	});
//}

function loginCheck(){
	var id = document.loginForm.m_id;
	var pw = document.loginForm.m_pw;
	
	if (isEmpty(id) || containsHS(id) || lessThan(id, 4)) {
		id.focus();
		return false;
	} else if (isEmpty(pw) || containsHS(pw) || lessThan(pw, 4)) {
		pw.value = "";
		pw.focus();
		return false;
	}
}

function levelCheck(){
	var point = 0;
	
	if (point >= 50000000) {
		filter_9_plus;
	} else if (point > 30000000 && point <= 50000000) {
		filter_8_plus;
	} else if (point > 10000000 && point <= 30000000) {
		filter_7_plus;
	} else if (point > 7000000 && point <= 10000000) {
		filter_6_plus;
	} else if (point > 4000000 && point <= 7000000) {
		filter_5_plus;
	} else if (point > 2000000 && point <= 4000000) {
		filter_4_plus;
	} else if (point > 1000000 && point <= 20000000) {
		filter_3_plus;
	} else if (point > 500000 && point <= 1000000) {
		filter_2_plus;
	} else if (point < 500000) {
		filter_1_plus;
	}
}

function goodbyeCheck(){
	if (confirm('정말로 탈퇴하시겠습니까?')){
		location.href="GoodBye";
	}
}

function writeCheck(){
	var title = document.bbsWriteForm.b_title;
	var content = document.bbsWriteForm.b_content;
	
	if (isEmpty(title)) {
		title.value = "";
		title.focus();
		return false;
	} else if (isEmpty(content)) {
		content.value = "";
		content.focus();
		return false;
	}
}

function wRPCheck(){
	var content = document.replyForm.rp_content;
	
	if (isEmpty(content)) {
		content.value = "";
		content.focus();
		return false;
	}
}

function loadImg(input){
	if (input.files && input.files[0]) {
        var reader = new FileReader();
 
        reader.onload = function (e) {
            $('#mdl-bbs-preview').attr('src', e.target.result);
        }
 
        reader.readAsDataURL(input.files[0]);
    }
}

function loadLogo(){
	var logoAddr = prompt('Input Company Logo Address');
	$("#company-logo").attr("src", logoAddr);
	$("#g_logo").val(logoAddr);
}

function deleteCheck(no){
	if (confirm('정말로 삭제하시겠습니까? (복구 불가능)')){
		location.href="Delete?b_no="+no;
	}
}

function delReply(no){
	if (confirm('정말로 삭제하시겠습니까? (복구 불가능)')){
		location.href="DeleteReply?rp_no="+no;
	}
}

function regCompanyCheck(){
	var name = document.regcomForm.g_name;
	var inst = document.regcomForm.g_inst;
	var logo = document.regcomForm.g_logo;
	var hp = document.regcomForm.g_hp;
	var recruit = document.regcomForm.g_recruit;
	var employment = document.regcomForm.g_employment;
	var required = document.regcomForm.g_required;
	var infoPage = document.regcomForm.g_infoPage;
	var condition = document.regcomForm.g_condition;
	var post = document.regcomForm.g_post;
	var addr = document.regcomForm.g_addr;
	var addrdetail = document.regcomForm.g_addrdetail;
	var tel = document.regcomForm.g_tel;
	var email = document.regcomForm.g_email;
	var station = document.regcomForm.g_station;
	
	if (isEmpty(name)) {
		name.value = "";
		name.focus();
		return false;
	} else if (isEmpty(inst)) {
		inst.value = "";
		inst.focus();
		return false;
	} else if (isEmpty(logo)) {
		logo.value = "";
		logo.focus();
		return false;
	} else if (isEmpty(hp)) {
		hp.value = "";
		hp.focus();
		return false;
	} else if (isEmpty(recruit)) {
		recruit.value = "";
		recruit.focus();
		return false;
	} else if (isEmpty(employment)) {
		employment.value = "";
		employment.focus();
		return false;
	} else if (isEmpty(required)) {
		required.value = "";
		required.focus();
		return false;
	} else if (isEmpty(condition)) {
		condition.value = "";
		condition.focus();
		return false;
	} else if (isEmpty(infoPage)) {
		infoPage.value = "";
		infoPage.focus();
		return false;
	} else if (isEmpty(post)) {
		post.value = "";
		post.focus();
		return false;
	} else if (isEmpty(addr)) {
		addr.value = "";
		addr.focus();
		return false;
	} else if (isEmpty(addrdetail)) {
		addrdetail.value = "";
		addrdetail.focus();
		return false;
	} else if (isEmpty(tel)) {
		tel.value = "";
		tel.focus();
		return false;
	} else if (isEmpty(email)) {
		email.value = "";
		email.focus();
		return false;
	} else if (isEmpty(station)) {
		station.value = "";
		station.focus();
		return false;
	}
}

function deleteCompany(no){
	if (confirm('정말로 삭제하시겠습니까? (복구 불가능)')){
		location.href="Admin.DelCom?g_no="+no;
	}
}

function snsSearchCheck(){
	var query = document.writeForm.query;
	
	if (isEmpty(query)) {
		alert("검색어");
		query.value = "";
		query.focus();
		return false;
	}
}
