<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="description" content="Introducing Lollipop, a sweet new take on Android.">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0">
	<title></title>
	
	<!-- Page styles -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:regular,bold,italic,thin,light,bolditalic,black,medium&amp;lang=en">
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    <link rel="stylesheet" href="https://code.getmdl.io/1.3.0/material.min.css">
    <link rel="stylesheet" href="resources/css/styles.css">
    <style type="text/css">
    	.mld-loginfield .mdl-textfield {
    		width: 120px;
    	}
    </style>
</head>
<body>
      <!-- 컨텐츠(content) 영역 -->
      <div class="mld-loginfield">
	      <form action="Login" method="post" name="loginForm" name="loginForm" onsubmit="return loginCheck();">
	 		<div class="mdl-textfield mdl-js-textfield">
	  		  <input class="mdl-textfield__input" type="text" id="lm_id" name="m_id" maxlength="16" placeholder="ID...">
	  		  <br>
	  		  <input class="mdl-textfield__input" type="password" id="lm_pw" name="m_pw" maxlength="16" placeholder="Password...">
	 		</div><br>
	   		<button type="submit" class="mdl-button mdl-js-button mdl-button--raised mdl-button--colored mdl-js-ripple-effect">Sign In</button>
		  </form>
      </div>
  
  	<!-- JavaScript -->
  	<script src="https://code.getmdl.io/1.3.0/material.min.js"></script>
  	<script src="resources/js/check.js"></script>
  	<script src="resources/js/validCheck.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    
</body>
</html>