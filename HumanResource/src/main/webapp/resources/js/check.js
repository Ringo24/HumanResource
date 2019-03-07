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
//		var id = $(this).val();
//		$.ajax({
//			url : "member.id.check",
//			data : {m_id:id},	// {파라메터명:값, 파라메터명:값, ..}
//			success : function(data){
//				if (id.length == 0) {
//					$("#joinIdCheckMsg").text("ID 입력").css("color", "");
//				} else if (id.length < 4) {
//					$("#joinIdCheckMsg").text("4자 이상").css("color", "");
//				} else if ($(data).find("member").length == 1) {
//					$("#joinIdCheckMsg").text("중복된 ID").css("color", "red");
//				} else {
//					$("#joinIdCheckMsg").text("OK").css("color", "green");
//				}
//			}
//		});
//	});
//}

function loginCheck(){
	var id = document.loginForm.jm_id;
	var pw = document.loginForm.jm_pw;
	
	if (isEmpty(id) || containsHS(id) || lessThan(id, 4)) {
		alert("아이디");
		id.value = "";
		id.focus();
		return false;
	} else if (isEmpty(pw) || containsHS(pw) || lessThan(pw, 4)) {
		alert("비번");
		pw.value = "";
		pw.focus();
		return false;
	}
}

function writeCheck(){
	var txt = document.writeForm.jm_txt;
	
	if (isEmpty(txt)) {
		alert("글");
		txt.value = "";
		txt.focus();
		return false;
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
function updateCheck(){
	var txt = document.updateForm.jm_txt;
	
	if (isEmpty(txt)) {
		alert("글");
		txt.value = "";
		txt.focus();
		return false;
	}
}

function replWriteCheck(replyForm){
	var txt = replyForm.jr_txt;
	
	if (isEmpty(txt)) {
		alert("내용");
		txt.value = "";
		txt.focus();
		return false;
	}
}

function dataWriteCheck(){
	var title = document.dataWriteForm.jd_title;
	var file = document.dataWriteForm.jd_file;
	
	if (isEmpty(title)) {
		alert("제목");
		title.value = "";
		title.focus();
		return false;
	} else if (isEmpty(file)) {
		alert("파일");
		file.value = "";
		file.focus();
		return false;
	}
}
function dataUpdateCheck(){
	var title = document.dataWriteForm.jd_title;
	
	if (isEmpty(title)) {
		alert("제목");
		title.value = "";
		title.focus();
		return false;
	}
}