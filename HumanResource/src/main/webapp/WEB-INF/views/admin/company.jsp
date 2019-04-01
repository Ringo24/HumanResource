<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="description" content="Introducing Lollipop, a sweet new take on Android.">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0">
	<title>Company</title>

	<!-- Page styles -->
	<link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:regular,bold,italic,thin,light,bolditalic,black,medium&amp;lang=en">
	<link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
	<link rel="stylesheet" href="https://code.getmdl.io/1.3.0/material.min.css">
	<link rel="stylesheet" href="resources/css/styles.css">
	<link rel="stylesheet" href="resources/css/workdetail_styles.css">
</head>

<body class="mdl-demo mdl-color--grey-100 mdl-color-text--grey-700 mdl-base">
<a name="top"></a>
<div class="android-screen-section mdl-typography--text-center">
      <main class="mdl-layout__content">
      <c:forEach var="c" items="${CompanyAl }">
      	<div class="demo-card-square mdl-card mdl-shadow--2dp">
		  <div class="mdl-card__title mdl-card--expand" style="background:url('${c.g_logo}') bottom right 15% no-repeat #46B6AC;">
		    <h2 class="mdl-card__title-text">${c.g_name }</h2>
		  </div>
		  <div class="mdl-card__supporting-text">
		  	${c.g_inst }
		  </div>
		  <div class="mdl-card__actions mdl-card--border">
		    <a class="mdl-button mdl-button--colored mdl-js-button mdl-js-ripple-effect">
		      View Company information.
		    </a>
		  </div>
		</div>
      </c:forEach>
      
      <a href="Admin.RegCompany" class="mdl-button mdl-js-button mdl-button--raised mdl-button--colored mdl-js-ripple-effect">Register</a>
      </main>
</div>
		<script src="https://code.getmdl.io/1.3.0/material.min.js"></script>
		<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    	<script type="text/javascript">
	    	$(function(){
	    	});
    	</script>
</body>
</html>