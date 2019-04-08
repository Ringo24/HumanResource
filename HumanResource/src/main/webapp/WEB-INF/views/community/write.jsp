<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="description" content="Introducing Lollipop, a sweet new take on Android.">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0">
	<title>BBS</title>

	<!-- Page styles -->
	<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:regular,bold,italic,thin,light,bolditalic,black,medium&amp;lang=en">
	<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
	<link rel="stylesheet" href="https://code.getmdl.io/1.3.0/material.min.css">
	<link rel="stylesheet" href="resources/css/styles.css">
	<link rel="stylesheet" href="resources/css/mdl-selectfield.min.css">
</head>

<body>
	<!-- 컨텐츠(content) 영역 -->
		<a name="top"></a>
		<div class="android-screen-section mdl-typography--text-center">
		<form action="Write" method="post" name="bbsWriteForm" enctype="multipart/form-data" onsubmit="return writeCheck();">
			<div class="demo-card-wide mdl-card mdl-shadow--2dp mdl-card-bbs">
				<div class="mdl-card__supporting-text mdl-typography--text-left">
					<span class="mdl-chip mdl-chip--contact mdl-chip-bbs">
					    <img class="mdl-chip__contact mdl-color--teal" src="resources/file/${sessionScope.loginMember.m_photo }"></img>
					    <span class="mdl-chip__text">@${sessionScope.loginMember.m_name }</span>
					</span>
				</div>
				<div class="mdl-textfield mdl-js-textfield mdl-bbs-title 제목">
					<input class="mdl-textfield__input" type="text" name="b_title" placeholder="  Add Article Title">
				</div>
				<div class="mdl-bbs-content 글쓰기부분">
					<table>
						<tr>
							<td class="mdl-bbs-photo 사진">
								<img id="mdl-bbs-preview" src="resources/images/nophoto.png">
							</td>
							<td class="mdl-bbs-textfield 글내용">
								<textarea class="mdl-bbs-textarea" name="b_content" rows="15" cols=""></textarea>
							</td>
						</tr>
					</table>
				</div>
				<div class="mdl-bbs-upload 사진 업로드">
					<div class="mdl-textfield mdl-js-textfield mdl-textfield--file mdl-bbs--file">
		    		  <input class="mdl-textfield__input" placeholder="Upload Photo" type="text" id="uploadFile" name="uploadFile" readonly/>
		    		  <div class="mdl-button mdl-button--primary mdl-button--icon mdl-button--file">
		      			<i class="material-icons">attach_file</i><input type="file" id="uploadBtn" name="b_photo" onchange="loadImg(this);">
		    		  </div>
		  			</div>
				</div>
				<div class="mdl-bbs-bottom">
					<div class="mdl-selectfield mdl-js-selectfield">
					  <c:choose>
						<c:when test="${sessionScope.loginMember.m_id == 'test' }">
							<select name="b_notice" class="mdl-selectfield__select mdl-bbs-selectfield">
								<option value="0">Public</option>
								<option value="1">Notification</option>
							</select>
						</c:when>
						<c:otherwise>
							<input type="hidden" name="b_notice" value="0">
						</c:otherwise>
					  </c:choose>
						<input type="hidden" name="b_category" value="${param.bbs }">
					</div>&nbsp;&nbsp;&nbsp;
					<button type="submit" class="mdl-button mdl-js-button mdl-button--raised mdl-button--colored mdl-js-ripple-effect">Save</button>
				</div>
			</div>
		</form>
		</div>

		<script src="https://code.getmdl.io/1.3.0/material.min.js"></script>
		<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
		<script src="resources/js/mdl-selectfield.min.js"></script>
		<script src="resources/js/check.js"></script>
  		<script src="resources/js/validCheck.js"></script>
  		<script type="text/javascript">
	    	$(function(){
	    		uploadFile();
	    	});
    </script>
</body>
</html>