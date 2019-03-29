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
    <title>Human Resource</title>

    <!-- Page styles -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:regular,bold,italic,thin,light,bolditalic,black,medium&amp;lang=en">
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    <link rel="stylesheet" href="https://code.getmdl.io/1.3.0/material.min.css">
    <link rel="stylesheet" href="resources/css/styles.css">
    <link rel="stylesheet" href="resources/css/workdetail_styles.css">
    <link rel="stylesheet" href="resources/css/mdl-selectfield.min.css">
    <link rel="stylesheet" href="resources/css/angular-validation.css">
</head>
<body>
	<!-- 헤더 영역 -->
    <div class="mdl-layout mdl-js-layout mdl-layout--fixed-header">
      <div class="android-header mdl-layout__header mdl-layout__header--waterfall">
        <div class="mdl-layout__header-row">
          <span class="android-title mdl-layout-title">
          	<!-- 로고 이미지 넣는 부분 -->
            <img class="android-logo-image" src="resources/images/android-logo.png" onclick="location.href='index'">
          </span>
          <!-- Add spacer, to align navigation to the right in desktop -->
          <!-- spacer를 넣으면, 네비게이션을 오른쪽 정렬해 줌 -->
          <div class="android-header-spacer mdl-layout-spacer"></div>
          <div class="android-search-box mdl-textfield mdl-js-textfield mdl-textfield--expandable mdl-textfield--floating-label mdl-textfield--align-right mdl-textfield--full-width">
            <label class="mdl-button mdl-js-button mdl-button--icon" for="search-field">
              <i class="material-icons">search</i>
            </label>
            <!-- 검색어 input -->
            <div class="mdl-textfield__expandable-holder">
              <input class="mdl-textfield__input" type="text" id="search-field">
            </div>
          </div>
          <!-- Navigation -->
          <!-- 네비게이션 메뉴 -->
          <div class="android-navigation-container">
            <nav class="android-navigation mdl-navigation">
              <a class="mdl-navigation__link mdl-typography--text-uppercase" href="Modify">My Page</a>
              <a class="mdl-navigation__link mdl-typography--text-uppercase" href="Notice?bbs=notice">Community</a>
              <a class="mdl-navigation__link mdl-typography--text-uppercase" href="Intro">About</a>
              <a class="mdl-navigation__link mdl-typography--text-uppercase" href="FAQ">Service</a>
            </nav>
          </div>
          <span class="android-mobile-title mdl-layout-title">
          	<!-- 모바일 로고 이미지 넣는 부분 -->
            <img class="android-logo-image" src="resources/images/android-logo.png">
          </span>
          <!-- more 버튼 영역 -->
           <!-- 회원가입 버튼 -->
           <c:if test="${sessionScope.loginMember == null }">
             <a href="SignUp" class="android-more-button mdl-button mdl-js-button mdl-button--raised mdl-button--colored mdl-js-ripple-effect">Sign up</a>
           </c:if>
        </div>
      </div>

	  <!-- 사이드 네비게이션 메뉴 -->
      <div class="android-drawer mdl-layout__drawer">
        <span class="mdl-layout-title">
          <jsp:include page="${loginPage }"></jsp:include>
        </span>
        <nav class="mdl-navigation">
          <span class="mdl-navigation__link" href="">My Page</span>
          <a class="mdl-navigation__link" href="MyRecruit">My Recruit</a>
          <a class="mdl-navigation__link" href="Pay">Payment</a>
          <a class="mdl-navigation__link" href="Modify">Modify Info</a>
          <c:choose>
            <c:when test="${sessionScope.loginMember != null }">
	          <a class="mdl-navigation__link" onclick="goodbyeCheck()">Withdrawal</a>
            </c:when>
            <c:otherwise>
	          <a class="mdl-navigation__link">Withdrawal</a>
            </c:otherwise>
          </c:choose>
          <div class="android-drawer-separator"></div>
          <span class="mdl-navigation__link" href="">Recruit</span>
          <a class="mdl-navigation__link" href="Detail">Search Recruit</a>
          <a class="mdl-navigation__link" href="">Menu 1</a>
          <a class="mdl-navigation__link" href="">Menu 2</a>
          <div class="android-drawer-separator"></div>
          <span class="mdl-navigation__link" href="">Community</span>
          <a class="mdl-navigation__link" href="Notice">Notice</a>
          <a class="mdl-navigation__link" href="Review">Review</a>
          <a class="mdl-navigation__link" href="Data">Data Room</a>
          <div class="android-drawer-separator"></div>
          <span class="mdl-navigation__link" href="">About</span>
          <a class="mdl-navigation__link" href="Greeting">Greeting</a>
          <a class="mdl-navigation__link" href="Profile">Officer Profile</a>
          <a class="mdl-navigation__link" href="Intro">Introduce</a>
          <div class="android-drawer-separator"></div>
          <span class="mdl-navigation__link" href="">Service</span>
          <a class="mdl-navigation__link" href="FAQ">FAQ</a>
          <a class="mdl-navigation__link" href="QnA">1:1 QnA</a>
          <a class="mdl-navigation__link" href="Map">Map</a>
        </nav>
      </div>

	  <!-- 컨텐츠(content) 영역 -->
      <div class="android-content mdl-layout__content">
	    <jsp:include page="${contentPage }"></jsp:include>
        <!-- 컨텐츠 영역 끝 -->

		<!-- 푸터 영역 -->
        <footer class="android-footer mdl-mega-footer">
          <div class="mdl-mega-footer--top-section">
            <div class="mdl-mega-footer--left-section">
              <button class="mdl-mega-footer--social-btn"></button>
              &nbsp;
              <button class="mdl-mega-footer--social-btn"></button>
              &nbsp;
              <button class="mdl-mega-footer--social-btn"></button>
            </div>
            <div class="mdl-mega-footer--right-section">
              <a class="mdl-typography--font-light" href="#top">
                Back to Top
                <i class="material-icons">expand_less</i>
              </a>
            </div>
          </div>

          <div class="mdl-mega-footer--middle-section">
            <p class="mdl-typography--font-light">Human Resource: © 2018 Soldesk, Java Bigdata 11th.</p>
            <p class="mdl-typography--font-light">Some features and devices may not be available in all areas</p>
          </div>

          <div class="mdl-mega-footer--bottom-section">
            <a class="android-link android-link-menu mdl-typography--font-light" id="version-dropdown">
              My Page
              <i class="material-icons">arrow_drop_up</i>
            </a>
            <ul class="mdl-menu mdl-js-menu mdl-menu--top-left mdl-js-ripple-effect" for="version-dropdown">
              <li class="mdl-menu__item">My Recruit</li>
              <li class="mdl-menu__item">Payment</li>
              <li class="mdl-menu__item">Modify Info</li>
            </ul>
            <a class="android-link android-link-menu mdl-typography--font-light" id="developers-dropdown">
              Community
              <i class="material-icons">arrow_drop_up</i>
            </a>
            <ul class="mdl-menu mdl-js-menu mdl-menu--top-left mdl-js-ripple-effect" for="developers-dropdown">
              <li class="mdl-menu__item">Notice</li>
              <li class="mdl-menu__item">Review</li>
              <li class="mdl-menu__item">Dataroom</li>
            </ul>
            <a class="android-link mdl-typography--font-light" href="">Map</a>
            <a class="android-link mdl-typography--font-light" href="">Privacy Policy</a>
          </div>
		<input type="hidden" value="${r }" id="resultMsg">
		<div id="demo-toast-example" class="mdl-js-snackbar mdl-snackbar">
	      <div class="mdl-snackbar__text"></div>
  	      <button class="mdl-snackbar__action" type="button"></button>
	    </div>
        </footer>
      </div>
    </div>
    
    <!-- JavaScript -->
    <script src="https://code.getmdl.io/1.3.0/material.min.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="resources/js/mdl-selectfield.min.js"></script>
  	<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.4/angular.min.js"></script>
  	<script src="resources/js/angular-validation.js"></script>
  	<script src="resources/js/check.js"></script>
  	<script src="resources/js/validCheck.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
    <script src="resources/js/execDaumPostcode.js"></script>
    <script type="text/javascript">
    	$(function(){
    	    var message = $("#resultMsg").val();
    	    if (message != "") {
	    		(function() {
	      		  'use strict';
	      		  window['counter'] = 0;
	      		  var snackbarContainer = document.querySelector('#demo-toast-example');
	      		  window.addEventListener('load', function() {
	    		    'use strict';
	    		    var data = {message: message};
	    		    snackbarContainer.MaterialSnackbar.showSnackbar(data);
	      		  });
	      		}());
			}
    	});
    </script>
    
</body>
</html>