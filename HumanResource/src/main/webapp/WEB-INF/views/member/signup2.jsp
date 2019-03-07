<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="description" content="Introducing Lollipop, a sweet new take on Android.">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0">
	<title>Sign Up</title>
	
	<!-- Page styles -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:regular,bold,italic,thin,light,bolditalic,black,medium&amp;lang=en">
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    <link rel="stylesheet" href="https://code.getmdl.io/1.3.0/material.min.css">
    <link rel="stylesheet" href="../resources/css/mdl-selectfield.min.css">
    <link rel="stylesheet" href="../resources/css/angular-validation.css">
    <link rel="stylesheet" href="../resources/css/styles.css">
</head>
<body>
    <div class="mdl-layout mdl-js-layout mdl-layout--fixed-header">

      <div class="android-header mdl-layout__header mdl-layout__header--waterfall">
        <div class="mdl-layout__header-row">
          <span class="android-title mdl-layout-title">
          	<!-- 로고 이미지 넣는 부분 -->
          	<a href="/hr/">
            <img class="android-logo-image" src="../resources/images/android-logo.png">
          	</a>
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
              <a class="mdl-navigation__link mdl-typography--text-uppercase" href="">My Page</a>
              <a class="mdl-navigation__link mdl-typography--text-uppercase" href="../community/bbs.html">Community</a>
              <a class="mdl-navigation__link mdl-typography--text-uppercase" href="">About</a>
              <a class="mdl-navigation__link mdl-typography--text-uppercase" href="">Service</a>
            </nav>
          </div>
          <span class="android-mobile-title mdl-layout-title">
          	<!-- 모바일 로고 이미지 넣는 부분 -->
            <img class="android-logo-image" src="../resources/images/android-logo.png">
          </span>
          <!-- 회원가입 버튼 -->
          <a href="../SignUp/" class="android-more-button mdl-button mdl-js-button mdl-button--raised mdl-button--colored mdl-js-ripple-effect">Sign up</a>
        </div>
      </div>

	  <!-- 사이드 네비게이션 메뉴 -->
      <div class="android-drawer mdl-layout__drawer">
        <span class="mdl-layout-title">
          <img class="android-logo-image" src="../resources/images/android-logo-white.png">
        </span>
        <nav class="mdl-navigation">
          <span class="mdl-navigation__link" href="">My Page</span>
          <a class="mdl-navigation__link" href="">신청내역 조회</a>
          <a class="mdl-navigation__link" href="">급여신청</a>
          <a class="mdl-navigation__link" href="">내 정보 수정</a>
          <a class="mdl-navigation__link" href="">회원 탈퇴</a>
          <div class="android-drawer-separator"></div>
          <span class="mdl-navigation__link" href="">Community</span>
          <a class="mdl-navigation__link" href="">공지사항</a>
          <a class="mdl-navigation__link" href="">파견 후기</a>
          <a class="mdl-navigation__link" href="">자료실</a>
          <div class="android-drawer-separator"></div>
          <span class="mdl-navigation__link" href="">About</span>
          <a class="mdl-navigation__link" href="">인사말</a>
          <a class="mdl-navigation__link" href="">임원 프로필</a>
          <a class="mdl-navigation__link" href="">사업 소개</a>
          <div class="android-drawer-separator"></div>
          <span class="mdl-navigation__link" href="">Service</span>
          <a class="mdl-navigation__link" href="">FAQ</a>
          <a class="mdl-navigation__link" href="">1:1 문의</a>
          <a class="mdl-navigation__link" href="">찾아오는 길</a>
        </nav>
      </div>
      
      <!-- 컨텐츠(content) 영역 -->
      <div class="android-content mdl-layout__content">
        <a name="top"></a>
        <div class="android-screen-section mdl-typography--text-center">
      <div ng-app="validationApp" ng-controller="mainController" class="">
          <form action="/hr/Resister/" method="post" name="joinForm" onsubmit="return joinCheck();" enctype="multipart/form-data" novalidate>
  			<div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
   		 	  <input class="mdl-textfield__input" type="text" id="m_id" name="m_id" maxlength="16" pattern="[A-Za-z\s]*" ng-model="data.m_id" ng-required="true" value="${m_id }">
    		  <label class="mdl-textfield__label" for="m_id">ID...</label>
    		  <span class="mdl-tooltip mdl-tooltip--validation" for="m_id" ng-show="joinForm.m_id.$invalid && joinForm.m_id.$touched">
                <span ng-show="joinForm.m_id.$error.required">Required.</span>
                <span ng-show="joinForm.m_id.$error.pattern">Invalid pattern.</span>
                <span ng-show="" id="joinIdCheckMsg">중복된 ID</span>
              </span>
  			</div><br>
  			<div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
   		 	  <input class="mdl-textfield__input" type="password" id="m_pw" name="m_pw" maxlength="16" ng-model="data.m_pw" ng-required="true" value="${m_pw }">
    		  <label class="mdl-textfield__label" for="m_pw">Password...</label>
    		  <span class="mdl-tooltip mdl-tooltip--validation" for="m_pw">Password.</span>
    		  <span class="mdl-tooltip mdl-tooltip--validation" for="m_pw" ng-show="joinForm.m_pw.$invalid && joinForm.m_pw.$touched">
                <span ng-show="joinForm.m_pw.$error.required">Required.</span>
              </span>
  			</div><br>
  			<div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
   		 	  <input class="mdl-textfield__input" type="password" id="m_pw2" name="m_pw2" maxlength="16" ng-model="data.m_pw2" ng-required="true" field-match="data.m_pw">
    		  <label class="mdl-textfield__label" for="m_pw2">Confirm Password...</label>
    		  <span class="mdl-tooltip mdl-tooltip--validation" for="m_pw2" ng-show="joinForm.m_pw2.$invalid && joinForm.m_pw2.$touched">
                <span ng-show="joinForm.m_pw2.$error.required">Required.</span>
                <span ng-show="joinForm.m_pw2.$error.fieldmatch">Passwords do not match.</span>
              </span>
  			</div><br>
  			<br>
  			<div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
   		 	  <input class="mdl-textfield__input" type="text" id="m_name" name="m_name" pattern="[가-힣]*" ng-model="data.m_name" ng-required="true" value="${m_name }">
    		  <label class="mdl-textfield__label" for="m_name">Name...</label>
    		  <span class="mdl-tooltip mdl-tooltip--validation" for="m_name" ng-show="joinForm.m_name.$invalid && joinForm.m_name.$touched">
                <span ng-show="joinForm.m_name.$error.required">Required.</span>
                <span ng-show="joinForm.m_name.$error.pattern">Invalid pattern.</span>
              </span>
  			</div><br>
  			<div class="mdl-textfield mdl-js-textfield">
  			  <input class="mdl-textfield__input" type="text" id="m_gender" name="m_gender" ng-model="data.m_gender" ng-required="true" value="${m_gender }">
    		  <label class="mdl-textfield__label" for="m_gender">Gender...</label>
  			</div><br>
  			<div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
   		 	  <input class="mdl-textfield__input" type="email" id="m_email" name="m_email" ng-model="data.m_email" ng-required="true" value="${m_email }">
    		  <label class="mdl-textfield__label" for="m_email">E-Mail...</label>
    		  <span class="mdl-tooltip mdl-tooltip--validation" for="m_email" ng-show="joinForm.m_email.$invalid && joinForm.m_email.$touched">
                <span ng-show="joinForm.m_email.$error.required">Required.</span>
                <span ng-show="joinForm.m_email.$error.email">Invalid email.</span>
              </span>
    		</div><br>
    		<div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
    		  <input class="mdl-textfield__input" type="text" pattern="-?[0-9]*(\.[0-9]+)?" id="m_bdate" name="m_bdate" maxlength="6" minlength="6" ng-model="data.m_bdate" ng-required="true" value="${m_bdate }">
			  <label class="mdl-textfield__label" for="m_bdate">Birthday...</label>
    		  <span class="mdl-tooltip mdl-tooltip--validation" for="m_bdate" ng-show="joinForm.m_bdate.$invalid && joinForm.m_bdate.$touched">
                <span ng-show="joinForm.m_bdate.$error.required">Required.</span>
                <span ng-show="joinForm.m_bdate.$error.pattern">Invalid pattern.</span>
                <span ng-show="joinForm.m_bdate.$error.minlength">Minimum of six characters.</span>
              </span>
  			</div><br>
    		<div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
    		  <input class="mdl-textfield__input" type="text" pattern="-?[0-9]*(\.[0-9]+)?" id="m_phone" name="m_phone" maxlength="11" minlength="6" ng-model="data.m_phone" ng-required="true" value="${m_phone }">
			  <label class="mdl-textfield__label" for="m_phone">Phone Number...</label>
    		  <span class="mdl-tooltip mdl-tooltip--validation" for="m_phone" ng-show="joinForm.m_bdate.$invalid && joinForm.m_bdate.$touched">
                <span ng-show="joinForm.m_phone.$error.required">Required.</span>
                <span ng-show="joinForm.m_phone.$error.pattern">Invalid pattern.</span>
                <span ng-show="joinForm.m_phone.$error.minlength">Minimum of eleven characters.</span>
              </span>
  			</div><br>
  			<br>
  			<div class="mdl-textfield mdl-js-textfield">
  			  <input class="mdl-textfield__input" type="text" pattern="-?[0-9]*(\.[0-9]+)?" id="m_school" name="m_school" maxlength="11" minlength="6" ng-model="data.m_school" ng-required="true" value="${m_school }">
			  <label class="mdl-textfield__label" for="m_school">Phone Number...</label>
  			</div><br>
  			<div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
   		 	  <input class="mdl-textfield__input" type="text" id="m_schoolname" name="m_schoolname" pattern="[가-힣]*" ng-model="data.m_schoolname" ng-required="true" value="${m_schoolname }">
    		  <label class="mdl-textfield__label" for="m_schoolname">School...</label>
    		  <span class="mdl-tooltip mdl-tooltip--validation" for="m_schoolname" ng-show="joinForm.m_schoolname.$invalid && joinForm.m_schoolname.$touched">
                <span ng-show="joinForm.m_schoolname.$error.required">Required.</span>
                <span ng-show="joinForm.m_schoolname.$error.pattern">Invalid pattern.</span>
              </span>
    		</div><br>
  			<div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
   		 	  <input class="mdl-textfield__input" type="text" id="m_schoolmajor" name="m_schoolmajor" pattern="[가-힣]*" ng-model="data.m_schoolmajor" ng-required="true" value="${m_schoolmajor }">
    		  <label class="mdl-textfield__label" for="m_schoolmajor">Major...</label>
    		  <span class="mdl-tooltip mdl-tooltip--validation" for="m_schoolmajor" ng-show="joinForm.m_schoolmajor.$invalid && joinForm.m_schoolmajor.$touched">
                <span ng-show="joinForm.m_schoolmajor.$error.required">Required.</span>
                <span ng-show="joinForm.m_schoolmajor.$error.pattern">Invalid pattern.</span>
              </span>
    		</div><br>
    		<div class="mdl-textfield mdl-js-textfield">
    		  <input class="mdl-textfield__input" type="text" id="m_working" name="m_working" ng-model="data.m_working" ng-required="true" value="${m_working }">
    		  <label class="mdl-textfield__label" for="m_working">Working...</label>
  			</div><br>
    		<div class="mdl-textfield mdl-js-textfield">
    		  <input class="mdl-textfield__input" type="text" id="m_army" name="m_army" ng-model="data.m_army" ng-required="true" value="${m_army }">
    		  <label class="mdl-textfield__label" for="m_army">Army...</label>
  			</div><br>
      		<div class="mdl-selectfield mdl-js-selectfield mdl-textfield--floating-label">
    		  <input class="mdl-textfield__input" type="text" id="m_bank" name="m_bank" ng-model="data.m_bank" ng-required="true" value="${m_bank }">
    		  <label class="mdl-textfield__label" for="m_bank">Bank...</label>
			</div><br>
    		<div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
    		  <input class="mdl-textfield__input" type="text" pattern="-?[0-9]*(\.[0-9]+)?" id="m_account" name="m_account" maxlength="20" ng-model="data.m_account" ng-required="true" value="${m_account }">
			  <label class="mdl-textfield__label" for="m_account">Account Number...</label>
    		  <span class="mdl-tooltip mdl-tooltip--validation" for="m_account" ng-show="joinForm.m_account.$invalid && joinForm.m_account.$touched">
                <span ng-show="joinForm.m_account.$error.required">Required.</span>
                <span ng-show="joinForm.m_account.$error.pattern">Invalid pattern.</span>
              </span>
  			</div><br>
  			<div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
   		 	  <input class="mdl-textfield__input" type="text" id="m_accname" name="m_accname" pattern="[가-힣]*" ng-model="data.m_accname" ng-required="true" value="${m_accname }">
    		  <label class="mdl-textfield__label" for="m_accname">Account Name...</label>
    		  <span class="mdl-tooltip mdl-tooltip--validation" for="m_accname" ng-show="joinForm.m_accname.$invalid && joinForm.m_accname.$touched">
                <span ng-show="joinForm.m_accname.$error.required">Required.</span>
                <span ng-show="joinForm.m_accname.$error.pattern">Invalid pattern.</span>
              </span>
    		</div><br>
  			<br>
  			<a id="addrSearch" class="android-more-button mdl-button mdl-js-button mdl-button--raised mdl-button--accent mdl-js-ripple-effect">Find Address</a><br>
    		<div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
    		  <input class="mdl-textfield__input" type="text" pattern="-?[0-9]*(\.[0-9]+)?" id="m_post" name="m_post" maxlength="6" readonly="readonly" value="${m_post }">
			  <label class="mdl-textfield__label" for="m_post">Post Code...</label>
    		  <span class="mdl-textfield__error">Input is not a number!</span>
  			</div><br>
    		<div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
   		 	  <input class="mdl-textfield__input" type="text" id="m_addr" name="m_addr" readonly="readonly" value="${m_addr }">
    		  <label class="mdl-textfield__label" for="m_addr">Road Address...</label>
    		</div><br>
    		<div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
   		 	  <input class="mdl-textfield__input" type="text" id="m_addrdetail" name="m_addrdetail" ng-model="data.m_addrdetail" ng-required="true" value="${m_addrdetail }">
    		  <label class="mdl-textfield__label" for="m_addrdetail">Detail Address...</label>
    		  <span class="mdl-tooltip mdl-tooltip--validation" for="m_addrdetail" ng-show="joinForm.m_addrdetail.$invalid && joinForm.m_addrdetail.$touched">
                <span ng-show="joinForm.m_addrdetail.$error.required">Required.</span>
              </span>
    		</div><br>
    		<div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
   		 	  <input class="mdl-textfield__input" type="text" id="m_station" name="m_station" pattern="[가-힣]*" ng-model="data.m_station" ng-required="true" value="${m_station }">
    		  <label class="mdl-textfield__label" for="m_station">Subway Station...</label>
    		  <span class="mdl-tooltip mdl-tooltip--validation" for="m_station" ng-show="joinForm.m_station.$invalid && joinForm.m_station.$touched">
                <span ng-show="joinForm.m_station.$error.required">Required.</span>
                <span ng-show="joinForm.m_station.$error.pattern">Invalid pattern.</span>
              </span>
    		</div><br>
    		<br>
  			<div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
    		  <textarea class="mdl-textfield__input" type="text" rows="4" id="m_intro" name="m_intro" maxlength="300" ng-model="data.m_intro" ng-required="true">${m_intro }</textarea>
    		  <label class="mdl-textfield__label" for="m_intro">Introduce Yourself...</label>
    		  <span class="mdl-tooltip mdl-tooltip--validation" for="m_intro" ng-show="joinForm.m_intro.$invalid && joinForm.m_intro.$touched">
                <span ng-show="joinForm.m_intro.$error.required">Required.</span>
              </span>
  			</div><br>
  			<div class="mdl-textfield mdl-js-textfield mdl-textfield--file mdl-textfield--floating-label">
    		  <input class="mdl-textfield__input" placeholder="" type="text" id="uploadFile" name="uploadFile" readonly value="${m_photo }"/>
    		  <label class="mdl-textfield__label" for="uploadFile">Upload Photo...</label>
    		  <div class="mdl-button mdl-button--primary mdl-button--icon mdl-button--file">
      			<i class="material-icons">attach_file</i><input type="file" id="uploadBtn" name="m_photo">
    		  </div>
  			</div><br>
    		<button type="submit" class="mdl-button mdl-js-button mdl-button--raised mdl-button--colored mdl-js-ripple-effect">Resister</button>
    		<a href="/hr/" class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect">Cancel</a>
		  </form>
		</div>
        </div>
      
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
            <p class="mdl-typography--font-light">Satellite imagery: © 2014 Astrium, DigitalGlobe</p>
            <p class="mdl-typography--font-light">Some features and devices may not be available in all areas</p>
          </div>

          <div class="mdl-mega-footer--bottom-section">
            <a class="android-link android-link-menu mdl-typography--font-light" id="version-dropdown">
              My Page
              <i class="material-icons">arrow_drop_up</i>
            </a>
            <ul class="mdl-menu mdl-js-menu mdl-menu--top-left mdl-js-ripple-effect" for="version-dropdown">
              <li class="mdl-menu__item">신청내역 조회</li>
              <li class="mdl-menu__item">급여신청</li>
              <li class="mdl-menu__item">내 정보 수정</li>
            </ul>
            <a class="android-link android-link-menu mdl-typography--font-light" id="developers-dropdown">
              Community
              <i class="material-icons">arrow_drop_up</i>
            </a>
            <ul class="mdl-menu mdl-js-menu mdl-menu--top-left mdl-js-ripple-effect" for="developers-dropdown">
              <li class="mdl-menu__item">공지사항</li>
              <li class="mdl-menu__item">파견후기</li>
              <li class="mdl-menu__item">자료실</li>
            </ul>
            <a class="android-link mdl-typography--font-light" href="">Map</a>
            <a class="android-link mdl-typography--font-light" href="">Privacy Policy</a>
          </div>

        </footer>
      </div>
  </div>
  
  	<!-- JavaScript -->
  	<script src="https://code.getmdl.io/1.3.0/material.min.js"></script>
  	<script src="../resources/js/mdl-selectfield.min.js"></script>
  	<script src="https://ajax.googleapis.com/ajax/libs/angularjs/1.4.4/angular.min.js"></script>
  	<script src="../resources/js/angular-validation.js"></script>
  	<script src="../resources/js/check.js"></script>
  	<script src="../resources/js/validCheck.js"></script>
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
    <script src="../resources/js/execDaumPostcode.js"></script>
    <script type="text/javascript">
    	$(function(){
    		execDaumPostcode();
    		uploadFile();
    	});
    </script>
    
</body>
</html>