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
          <form action="Join/" method="post" name="joinForm" enctype="multipart/form-data">
  			<div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
   		 	  <input class="mdl-textfield__input" type="text" id="m_id" name="m_id" maxlength="16">
    		  <label class="mdl-textfield__label" for="m_id">ID...</label>
  			</div><br>
  			<div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
   		 	  <input class="mdl-textfield__input" type="password" id="m_pw" name="m_pw" maxlength="16">
    		  <label class="mdl-textfield__label" for="m_pw">Password...</label>
  			</div><br>
  			<div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
   		 	  <input class="mdl-textfield__input" type="password" id="m_pw2" maxlength="16">
    		  <label class="mdl-textfield__label" for="m_pw2">Confirm Password...</label>
    		  <span class="mdl-textfield__error">Password is incorrect!</span>
  			</div><br>
  			<br>
  			<div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
   		 	  <input class="mdl-textfield__input" type="text" id="m_name" name="m_name">
    		  <label class="mdl-textfield__label" for="m_name">Name...</label>
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
   		 	  <input class="mdl-textfield__input" type="text" id="m_email" name="m_name">
    		  <label class="mdl-textfield__label" for="m_email">E-Mail...</label>
    		</div><br>
    		<div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
    		  <input class="mdl-textfield__input" type="text" pattern="-?[0-9]*(\.[0-9]+)?" id="m_bdate" name="m_bdate" maxlength="6">
			  <label class="mdl-textfield__label" for="m_bdate">Birthday...</label>
    		  <span class="mdl-textfield__error">Input is not a number!</span>
  			</div><br>
    		<div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
    		  <input class="mdl-textfield__input" type="text" pattern="-?[0-9]*(\.[0-9]+)?" id="m_phone" name="m_phone" maxlength="11">
			  <label class="mdl-textfield__label" for="m_phone">Phone Number...</label>
    		  <span class="mdl-textfield__error">Input is not a number!</span>
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
   		 	  <input class="mdl-textfield__input" type="text" id="m_schoolname" name="m_schoolname">
    		  <label class="mdl-textfield__label" for="m_schoolname">School...</label>
    		</div><br>
  			<div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
   		 	  <input class="mdl-textfield__input" type="text" id="m_schoolmajor" name="m_schoolmajor">
    		  <label class="mdl-textfield__label" for="m_schoolmajor">Major...</label>
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
    		  <input class="mdl-textfield__input" type="text" pattern="-?[0-9]*(\.[0-9]+)?" id="m_account" name="m_account" maxlength="20">
			  <label class="mdl-textfield__label" for="m_account">Account Number...</label>
    		  <span class="mdl-textfield__error">Input is not a number!</span>
  			</div><br>
  			<div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
   		 	  <input class="mdl-textfield__input" type="text" id="m_accname" name="m_accname">
    		  <label class="mdl-textfield__label" for="m_accname">Account Name...</label>
    		</div><br>
  			<br>
  			<a id="addrSearch" class="android-more-button mdl-button mdl-js-button mdl-button--raised mdl-button--accent mdl-js-ripple-effect">Find Address</a><br>
    		<div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
    		  <input class="mdl-textfield__input" type="text" pattern="-?[0-9]*(\.[0-9]+)?" id="m_post" name="m_post" maxlength="6">
			  <label class="mdl-textfield__label" for="m_post">Post Code...</label>
    		  <span class="mdl-textfield__error">Input is not a number!</span>
  			</div><br>
    		<div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
   		 	  <input class="mdl-textfield__input" type="text" id="m_addr" name="m_addr">
    		  <label class="mdl-textfield__label" for="m_addr">Road Address...</label>
    		</div><br>
    		<div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
   		 	  <input class="mdl-textfield__input" type="text" id="m_addrdetail" name="m_addrdetail">
    		  <label class="mdl-textfield__label" for="m_addrdetail">Detail Address...</label>
    		</div><br>
    		<div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
   		 	  <input class="mdl-textfield__input" type="text" id="m_station" name="m_station">
    		  <label class="mdl-textfield__label" for="m_station">Subway Station...</label>
    		</div><br>
    		
    		<br>
  			<div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
    		  <textarea class="mdl-textfield__input" type="text" rows="4" id="m_intro" name="m_intro"></textarea>
    		  <label class="mdl-textfield__label" for="m_intro">Introduce Yourself...</label>
  			</div><br>
  			<div class="mdl-textfield mdl-js-textfield mdl-textfield--file mdl-textfield--floating-label">
    		  <input class="mdl-textfield__input" placeholder="" type="text" id="uploadFile" name="m_photo" readonly/>
    		  <label class="mdl-textfield__label" for="uploadFile">Upload Photo...</label>
    		  <div class="mdl-button mdl-button--primary mdl-button--icon mdl-button--file">
      			<i class="material-icons">attach_file</i><input type="file" id="uploadBtn">
    		  </div>
  			</div><br>
    		<button type="submit" class="mdl-button mdl-js-button mdl-button--raised mdl-button--colored mdl-js-ripple-effect">Sign up</button>
    		<a href="/hr/" class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect">Cancel</a>
		  </form>

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
    <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
    <script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
    <script src="../resources/js/execDaumPostcode.js"></script>
    <script type="text/javascript">
    	$(function(){
    		execDaumPostcode();
    	});
    </script>
    
</body>
</html>