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
</head>

<body>
	<!-- 컨텐츠(content) 영역 -->
		<a name="top"></a>
		<div class="android-screen-section mdl-typography--text-center">
			<div class="demo-card-wide mdl-card mdl-shadow--2dp">
			  <div class="mdl-card__title">
			    <h2 class="mdl-card__title-text">${b.b_title }</h2>
			  </div>
			  <div class="mdl-card__supporting-text mdl-card--border">
			    <span class="mdl-chip mdl-chip--contact">
				    <img class="mdl-chip__contact mdl-color--teal" src="resources/file/${b.m_photo }"></img>
				    <span class="mdl-chip__text">${b.b_name }</span>
				</span>
			    <span class="mdl-chip mdl-chip--contact">
				    <img class="mdl-chip__contact mdl-color--teal" src="resources/images/baseline_access_time_white_48dp.png"></img>
				    <span class="mdl-chip__text">
				    	<fmt:formatDate value="${b.b_date }" pattern="yyyy-MM-dd hh:mm:ss"/>  
				    </span>
				</span>
			    <span class="mdl-chip mdl-chip--contact">
				    <img class="mdl-chip__contact mdl-color--teal" src="resources/images/baseline_remove_red_eye_white_48dp.png"></img>
				    <span class="mdl-chip__text">${b.b_hit }</span>
				</span>
			  </div>
			  <div class="mdl-card__supporting-text mdl-typography--text-left">
			    <c:if test="${b.b_photo != null }">
			    	<img src="resources/file/${b.b_photo }"><br>
			    </c:if>
			    ${b.b_content }
			  </div>
			  <div class="mdl-card__actions mdl-card--border">
			    <a class="mdl-button mdl-button--colored mdl-js-button mdl-js-ripple-effect">
			      Modify
			    </a>
			    <a class="mdl-button mdl-button--accent mdl-js-button mdl-js-ripple-effect">
			      Delete
			    </a>
			  </div>
			  <div class="mdl-card__menu">
			    <button class="mdl-button mdl-button--icon mdl-js-button mdl-js-ripple-effect">
			      <i class="material-icons">share</i>
			    </button>
			  </div>
			</div>
		</div>

		<script src="https://code.getmdl.io/1.3.0/material.min.js"></script>
		<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
</body>
</html>