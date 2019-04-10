<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="description" content="Introducing Lollipop, a sweet new take on Android.">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0">
	<title>My Info</title>
	
	<!-- Page styles -->
    <link rel="stylesheet" href="https://fonts.googleapis.com/css?family=Roboto:regular,bold,italic,thin,light,bolditalic,black,medium&amp;lang=en">
    <link rel="stylesheet" href="https://fonts.googleapis.com/icon?family=Material+Icons">
    <link rel="stylesheet" href="https://code.getmdl.io/1.3.0/material.min.css">
    <link rel="stylesheet" href="resources/css/styles.css">
    <link rel="stylesheet" href="resources/css/mdl-selectfield.min.css">
    <link rel="stylesheet" href="resources/css/angular-validation.css">
</head>
<body>
      <!-- 컨텐츠(content) 영역 -->
        <a name="top"></a>
        <div class="android-screen-section mdl-typography--text-center">
      <div ng-app="validationApp" ng-controller="mainController" class="">
          <form action="Crystal" method="post" name="joinForm" enctype="multipart/form-data" onsubmit="return joinCheck();" novalidate>
  			<div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
   		 	  <input class="mdl-textfield__input" type="text" id="m_id" name="m_id" maxlength="16" value="${sessionScope.loginMember.m_id }" disabled>
    		  <label class="mdl-textfield__label" for="m_id">ID...</label>
  			</div><br>
  			<div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
   		 	  <input class="mdl-textfield__input" type="password" id="m_pw" name="m_pw" maxlength="16" ng-model="data.m_pw" ng-required="true">
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
   		 	  <input class="mdl-textfield__input" type="text" id="m_name" name="m_name" pattern="[가-힣]*" ng-model="data.m_name" ng-required="true">
    		  <label class="mdl-textfield__label" for="m_name">Name...</label>
    		  <span class="mdl-tooltip mdl-tooltip--validation" for="m_name" ng-show="joinForm.m_name.$invalid && joinForm.m_name.$touched">
                <span ng-show="joinForm.m_name.$error.required">Required.</span>
                <span ng-show="joinForm.m_name.$error.pattern">Invalid pattern.</span>
              </span>
  			</div><br>
  			<div class="mdl-textfield mdl-js-textfield">
   		 	  <label class="mdl-radio mdl-js-radio mdl-js-ripple-effect" for="male">
  				<input checked class="mdl-radio__button" id="male" name="m_gender" type="radio" value="0">
  				<span class="mdl-radio__label">Male</span>
			  </label>
			  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			  <label class="mdl-radio mdl-js-radio mdl-js-ripple-effect" for="female">
  				<input class="mdl-radio__button" id="female" name="m_gender" type="radio" value="1">
  				<span class="mdl-radio__label">Female</span>
			  </label>
  			</div><br>
  			<div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
   		 	  <input class="mdl-textfield__input" type="email" id="m_email" name="m_email" ng-model="data.m_email" ng-required="true">
    		  <label class="mdl-textfield__label" for="m_email">E-Mail...</label>
    		  <span class="mdl-tooltip mdl-tooltip--validation" for="m_email" ng-show="joinForm.m_email.$invalid && joinForm.m_email.$touched">
                <span ng-show="joinForm.m_email.$error.required">Required.</span>
                <span ng-show="joinForm.m_email.$error.email">Invalid email.</span>
              </span>
    		</div><br>
    		<div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
    		  <input class="mdl-textfield__input" type="text" pattern="-?[0-9]*(\.[0-9]+)?" id="m_birth" name="m_birth" maxlength="6" minlength="6" ng-model="data.m_bdate" ng-required="true">
			  <label class="mdl-textfield__label" for="m_birth">Birthday...</label>
    		  <span class="mdl-tooltip mdl-tooltip--validation" for="m_birth" ng-show="joinForm.m_birth.$invalid && joinForm.m_birth.$touched">
                <span ng-show="joinForm.m_birth.$error.required">Required.</span>
                <span ng-show="joinForm.m_birth.$error.pattern">Invalid pattern.</span>
                <span ng-show="joinForm.m_birth.$error.minlength">Minimum of six characters.</span>
              </span>
  			</div><br>
    		<div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
    		  <input class="mdl-textfield__input" type="text" pattern="-?[0-9]*(\.[0-9]+)?" id="m_phone" name="m_phone" maxlength="11" minlength="6" ng-model="data.m_phone" ng-required="true">
			  <label class="mdl-textfield__label" for="m_phone">Phone Number...</label>
    		  <span class="mdl-tooltip mdl-tooltip--validation" for="m_phone" ng-show="joinForm.m_bdate.$invalid && joinForm.m_bdate.$touched">
                <span ng-show="joinForm.m_phone.$error.required">Required.</span>
                <span ng-show="joinForm.m_phone.$error.pattern">Invalid pattern.</span>
                <span ng-show="joinForm.m_phone.$error.minlength">Minimum of eleven characters.</span>
              </span>
  			</div><br>
  			<br>
  			<div class="mdl-textfield mdl-js-textfield">
   		 	  <label class="mdl-radio mdl-js-radio mdl-js-ripple-effect" for="being">
  				<input checked class="mdl-radio__button" id="being" name="m_school" type="radio" value="0">
  				<span class="mdl-radio__label">재학</span>
			  </label>
			  <label class="mdl-radio mdl-js-radio mdl-js-ripple-effect" for="rest">
  				<input class="mdl-radio__button" id="rest" name="m_school" type="radio" value="1">
  				<span class="mdl-radio__label">휴학</span>
			  </label>
			  <label class="mdl-radio mdl-js-radio mdl-js-ripple-effect" for="prospective">
  				<input class="mdl-radio__button" id="prospective" name="m_school" type="radio" value="2">
  				<span class="mdl-radio__label">졸업예정</span>
			  </label>
			  <label class="mdl-radio mdl-js-radio mdl-js-ripple-effect" for="graduation">
  				<input class="mdl-radio__button" id="graduation" name="m_school" type="radio" value="3">
  				<span class="mdl-radio__label">졸업</span>
			  </label>
  			</div><br>
  			<div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
   		 	  <input class="mdl-textfield__input" type="text" id="m_schoolname" name="m_schoolname" pattern="[가-힣]*" ng-model="data.m_schoolname" ng-required="true">
    		  <label class="mdl-textfield__label" for="m_schoolname">School...</label>
    		  <span class="mdl-tooltip mdl-tooltip--validation" for="m_schoolname" ng-show="joinForm.m_schoolname.$invalid && joinForm.m_schoolname.$touched">
                <span ng-show="joinForm.m_schoolname.$error.required">Required.</span>
                <span ng-show="joinForm.m_schoolname.$error.pattern">Invalid pattern.</span>
              </span>
    		</div><br>
  			<div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
   		 	  <input class="mdl-textfield__input" type="text" id="m_schoolmajor" name="m_schoolmajor" pattern="[가-힣]*" ng-model="data.m_schoolmajor" ng-required="true">
    		  <label class="mdl-textfield__label" for="m_schoolmajor">Major...</label>
    		  <span class="mdl-tooltip mdl-tooltip--validation" for="m_schoolmajor" ng-show="joinForm.m_schoolmajor.$invalid && joinForm.m_schoolmajor.$touched">
                <span ng-show="joinForm.m_schoolmajor.$error.required">Required.</span>
                <span ng-show="joinForm.m_schoolmajor.$error.pattern">Invalid pattern.</span>
              </span>
    		</div><br>
    		<div class="mdl-textfield mdl-js-textfield">
   		 	  <label class="mdl-radio mdl-js-radio mdl-js-ripple-effect" for="worked">
  				<input checked class="mdl-radio__button" id="worked" name="m_working" type="radio" value="0">
  				<span class="mdl-radio__label">근무경험 유</span>
			  </label>
			  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			  <label class="mdl-radio mdl-js-radio mdl-js-ripple-effect" for="notworked">
  				<input class="mdl-radio__button" id="notworked" name="m_working" type="radio" value="1">
  				<span class="mdl-radio__label">근무경험 무</span>
			  </label>
  			</div><br>
    		<div class="mdl-textfield mdl-js-textfield">
   		 	  <label class="mdl-radio mdl-js-radio mdl-js-ripple-effect" for="army">
  				<input checked class="mdl-radio__button" id="army" name="m_army" type="radio" value="0">
  				<span class="mdl-radio__label">군필</span>
			  </label>
			  &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
			  <label class="mdl-radio mdl-js-radio mdl-js-ripple-effect" for="notarmy">
  				<input class="mdl-radio__button" id="notarmy" name="m_army" type="radio" value="1">
  				<span class="mdl-radio__label">미필</span>
			  </label>
  			</div><br>
      		<div class="mdl-selectfield mdl-js-selectfield mdl-textfield--floating-label">
  			  <select id=m_bank name="m_bank" class="mdl-selectfield__select">
    			<option value="noselect"></option>
    			<option value='SC제일은행'>SC제일은행</option>
				<option value='경남은행'>경남은행</option>
				<option value='광주은행'>광주은행</option>
				<option value='국민은행'>국민은행</option>
		        <option value='굿모닝신한증권'>굿모닝신한증권</option>
		        <option value='기업은행'>기업은행</option>
		        <option value='농협중앙회'>농협중앙회</option>
		        <option value='농협회원조합'>농협회원조합</option>
		        <option value='대구은행'>대구은행</option>
		        <option value='대신증권'>대신증권</option>
		        <option value='대우증권'>대우증권</option>
		        <option value='동부증권'>동부증권</option>
		        <option value='동양종합금융증권'>동양종합금융증권</option>
		        <option value='메리츠증권'>메리츠증권</option>
		        <option value='미래에셋증권'>미래에셋증권</option>
		        <option value='뱅크오브아메리카(BOA)'>뱅크오브아메리카(BOA)</option>
		        <option value='부국증권'>부국증권</option>
		        <option value='부산은행'>부산은행</option>
		        <option value='산림조합중앙회'>산림조합중앙회</option>
		        <option value='산업은행'>산업은행</option>
    		    <option value='삼성증권'>삼성증권</option>
	  	        <option value='상호신용금고'>상호신용금고</option>
				<option value='새마을금고'>새마을금고</option>
				<option value='수출입은행'>수출입은행</option>
				<option value='수협중앙회'>수협중앙회</option>
				<option value='신영증권'>신영증권</option>
				<option value='신한은행'>신한은행</option>
				<option value='신협중앙회'>신협중앙회</option>
				<option value='에스케이증권'>에스케이증권</option>
				<option value='에이치엠씨투자증권'>에이치엠씨투자증권</option>
				<option value='엔에이치투자증권'>엔에이치투자증권</option>
				<option value='엘아이지투자증권'>엘아이지투자증권</option>
				<option value='외환은행'>외환은행</option>
				<option value='우리은행'>우리은행</option>
				<option value='우리투자증권'>우리투자증권</option>
				<option value='우체국'>우체국</option>
				<option value='유진투자증권'>유진투자증권</option>
				<option value='전북은행'>전북은행</option>
				<option value='제주은행'>제주은행</option>
				<option value='키움증권'>키움증권</option>
				<option value='하나대투증권'>하나대투증권</option>
				<option value='하나은행'>하나은행</option>
				<option value='하이투자증권'>하이투자증권</option>
				<option value='한국씨티은행'>한국씨티은행</option>
				<option value='한국투자증권'>한국투자증권</option>
				<option value='한화증권'>한화증권</option>
				<option value='현대증권'>현대증권</option>
				<option value='홍콩상하이은행'>홍콩상하이은행</option>
  			  </select>
  			  <label class="mdl-selectfield__label" for="m_bank">Bank Name...</label>
			</div><br>
    		<div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
    		  <input class="mdl-textfield__input" type="text" pattern="-?[0-9]*(\.[0-9]+)?" id="m_account" name="m_account" maxlength="20" ng-model="data.m_account" ng-required="true">
			  <label class="mdl-textfield__label" for="m_account">Account Number...</label>
    		  <span class="mdl-tooltip mdl-tooltip--validation" for="m_account" ng-show="joinForm.m_account.$invalid && joinForm.m_account.$touched">
                <span ng-show="joinForm.m_account.$error.required">Required.</span>
                <span ng-show="joinForm.m_account.$error.pattern">Invalid pattern.</span>
              </span>
  			</div><br>
  			<div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
   		 	  <input class="mdl-textfield__input" type="text" id="m_accname" name="m_accname" pattern="[가-힣]*" ng-model="data.m_accname" ng-required="true">
    		  <label class="mdl-textfield__label" for="m_accname">Account Name...</label>
    		  <span class="mdl-tooltip mdl-tooltip--validation" for="m_accname" ng-show="joinForm.m_accname.$invalid && joinForm.m_accname.$touched">
                <span ng-show="joinForm.m_accname.$error.required">Required.</span>
                <span ng-show="joinForm.m_accname.$error.pattern">Invalid pattern.</span>
              </span>
    		</div><br>
  			<br>
  			<a id="addrSearch" class="android-more-button mdl-button mdl-js-button mdl-button--raised mdl-button--accent mdl-js-ripple-effect">Find Address</a><br>
    		<div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
    		  <input class="mdl-textfield__input" type="text" pattern="-?[0-9]*(\.[0-9]+)?" id="m_post" name="m_post" maxlength="6" readonly="readonly">
			  <label class="mdl-textfield__label" for="m_post">Post Code...</label>
    		  <span class="mdl-textfield__error">Input is not a number!</span>
  			</div><br>
    		<div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
   		 	  <input class="mdl-textfield__input" type="text" id="m_addr" name="m_addr" readonly="readonly">
    		  <label class="mdl-textfield__label" for="m_addr">Road Address...</label>
    		</div><br>
    		<div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
   		 	  <input class="mdl-textfield__input" type="text" id="m_addrdetail" name="m_addrdetail" ng-model="data.m_addrdetail" ng-required="true">
    		  <label class="mdl-textfield__label" for="m_addrdetail">Detail Address...</label>
    		  <span class="mdl-tooltip mdl-tooltip--validation" for="m_addrdetail" ng-show="joinForm.m_addrdetail.$invalid && joinForm.m_addrdetail.$touched">
                <span ng-show="joinForm.m_addrdetail.$error.required">Required.</span>
              </span>
    		</div><br>
    		<div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
   		 	  <input class="mdl-textfield__input" type="text" id="m_station" name="m_station" pattern="[가-힣]*" ng-model="data.m_station" ng-required="true">
    		  <label class="mdl-textfield__label" for="m_station">Subway Station...</label>
    		  <span class="mdl-tooltip mdl-tooltip--validation" for="m_station" ng-show="joinForm.m_station.$invalid && joinForm.m_station.$touched">
                <span ng-show="joinForm.m_station.$error.required">Required.</span>
                <span ng-show="joinForm.m_station.$error.pattern">Invalid pattern.</span>
              </span>
    		</div><br>
    		
    		<br>
  			<div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
    		  <textarea class="mdl-textfield__input" type="text" rows="4" id="m_intro" name="m_intro" maxlength="300" ng-model="data.m_intro" ng-required="true"></textarea>
    		  <label class="mdl-textfield__label" for="m_intro">Introduce Yourself...</label>
    		  <span class="mdl-tooltip mdl-tooltip--validation" for="m_intro" ng-show="joinForm.m_intro.$invalid && joinForm.m_intro.$touched">
                <span ng-show="joinForm.m_intro.$error.required">Required.</span>
              </span>
  			</div><br>
  			<div class="mdl-textfield mdl-js-textfield mdl-textfield--file mdl-textfield--floating-label">
    		  <input class="mdl-textfield__input" placeholder="" type="text" id="uploadFile" name="uploadFile" readonly/>
    		  <label class="mdl-textfield__label" for="uploadFile">Upload Photo...</label>
    		  <div class="mdl-button mdl-button--primary mdl-button--icon mdl-button--file">
      			<i class="material-icons">attach_file</i><input type="file" id="uploadBtn" name="m_photo">
    		  </div>
  			</div><br>
    		<button type="submit" class="mdl-button mdl-js-button mdl-button--raised mdl-button--colored mdl-js-ripple-effect">Resister</button>
    		<a href="index" class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect">Cancel</a>
		  </form>
		</div>
        </div>
      
  
  	<!-- JavaScript -->
  	<script src="https://code.getmdl.io/1.3.0/material.min.js"></script>
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
    		execDaumPostcode();
    		uploadFile();
    	});
    </script>
    
</body>
</html>