<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="description" content="Introducing Lollipop, a sweet new take on Android.">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0">
	<title>Resister Work</title>

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
    <form action="Admin.ModCom" method="post" name="regcomForm" onsubmit="return regCompanyCheck();">
      <main class="mdl-layout__content">
          <section class="section--center mdl-grid mdl-grid--no-spacing mdl-shadow--2dp">
            <header class="section__play-btn mdl-cell mdl-cell--3-col-desktop mdl-cell--2-col-tablet mdl-cell--4-col-phone mdl-color--white mdl-color-text--white">
              <img src="${g.g_logo }" id="company-logo">
            </header>
            <div class="mdl-card mdl-cell mdl-cell--9-col-desktop mdl-cell--6-col-tablet mdl-cell--4-col-phone">
              <div class="mdl-card__supporting-text mdl-typography--text-left">
                <div class="mdl-textfield mdl-js-textfield">
					<input class="mdl-textfield__input mdl-work-title__input" type="text" name="g_name" placeholder="Company Name.." value="${g.g_name }">
				</div>
				<div class="mdl-textfield mdl-js-textfield" style="width: 100%;">
					<input class="mdl-textfield__input mdl-work-content__input" type="text" name="g_inst" placeholder="Company Instruction.." maxlength="100" value="${g.g_inst }">
				</div><br>
	              <a onclick="loadLogo();" class="mdl-button mdl-js-button mdl-js-ripple-effect">Logo</a>
	              <input type="hidden" id="g_logo" name="g_logo" value="${g.g_logo }">
	              <input type="hidden" id="g_no" name="g_no" value="${g.g_no }">
              </div>
              <div class="mdl-card__actions mdl-typography--text-left">
				<div class="mdl-textfield mdl-js-textfield">
					<input class="mdl-textfield__input mdl-work-content__input" type="text" name="g_hp" placeholder="Homepage.." maxlength="100" value="${g.g_hp }">
				</div>
              </div>
            </div>
            <button class="mdl-button mdl-js-button mdl-js-ripple-effect mdl-button--icon" id="btn1">
              <i class="material-icons">more_vert</i>
            </button>
            <ul class="mdl-menu mdl-js-menu mdl-menu--bottom-right" for="btn1">
              <li class="mdl-menu__item">Lorem</li>
              <li class="mdl-menu__item" disabled>Ipsum</li>
              <li class="mdl-menu__item">Dolor</li>
            </ul>
          </section>
          <section class="section--center mdl-grid mdl-grid--no-spacing mdl-shadow--2dp">
            <div class="mdl-card mdl-cell mdl-cell--12-col">
              <div class="mdl-card__supporting-text mdl-grid mdl-grid--no-spacing mdl-typography--text-left">
                <h4 class="mdl-cell mdl-cell--12-col">Recruit</h4>
                <div class="section__circle-container mdl-cell mdl-cell--2-col mdl-cell--1-col-phone">
                  <div class="section__circle-container__circle mdl-color--primary"></div>
                </div>
                <div class="section__text mdl-typography--text-left mdl-cell mdl-cell--10-col-desktop mdl-cell--6-col-tablet mdl-cell--3-col-phone">
                  <h5>Recruit</h5>
                  <div class="mdl-textfield mdl-js-textfield" style="width: 100%;">
	    		    <textarea class="mdl-textfield__input" type="text" rows="3" id="g_recruit" name="g_recruit" maxlength="300">${g.g_recruit }</textarea>
	  			  </div>
                </div>
                <div class="section__circle-container mdl-cell mdl-cell--2-col mdl-cell--1-col-phone">
                  <div class="section__circle-container__circle mdl-color--primary"></div>
                </div>
                <div class="section__text mdl-typography--text-left mdl-cell mdl-cell--10-col-desktop mdl-cell--6-col-tablet mdl-cell--3-col-phone">
                  <h5>Forms of employment</h5>
                  <div class="mdl-textfield mdl-js-textfield" style="width: 100%;">
	    		    <textarea class="mdl-textfield__input" type="text" rows="3" id="g_employment" name="g_employment" maxlength="300">${g.g_employment }</textarea>
	  			  </div>
                </div>
                <div class="section__circle-container mdl-cell mdl-cell--2-col mdl-cell--1-col-phone">
                  <div class="section__circle-container__circle mdl-color--primary"></div>
                </div>
                <div class="section__text mdl-typography--text-left mdl-cell mdl-cell--10-col-desktop mdl-cell--6-col-tablet mdl-cell--3-col-phone">
                  <h5>Required condition</h5>
                  <div class="mdl-textfield mdl-js-textfield" style="width: 100%;">
	    		    <textarea class="mdl-textfield__input" type="text" rows="3" id="g_required" name="g_required" maxlength="300">${g.g_required }</textarea>
	  			  </div>
                </div>
              </div>
              <div class="mdl-card__actions">
                <div class="mdl-textfield mdl-js-textfield">
					<input class="mdl-textfield__input mdl-work-content__input" type="text" name="g_infoPage" placeholder="Recruit Infomation Homepage.." maxlength="100" value="${g.g_infoPage }">
				</div>
              </div>
            </div>
            <button class="mdl-button mdl-js-button mdl-js-ripple-effect mdl-button--icon" id="btn2">
              <i class="material-icons">more_vert</i>
            </button>
            <ul class="mdl-menu mdl-js-menu mdl-menu--bottom-right" for="btn2">
              <li class="mdl-menu__item">Lorem</li>
              <li class="mdl-menu__item" disabled>Ipsum</li>
              <li class="mdl-menu__item">Dolor</li>
            </ul>
          </section>
          <section class="section--center mdl-grid mdl-grid--no-spacing mdl-shadow--2dp">
            <div class="mdl-card mdl-cell mdl-cell--12-col">
              <div class="mdl-card__supporting-text mdl-typography--text-left">
                <h4>Working Conditions</h4>
                <div class="mdl-textfield mdl-js-textfield" style="width: 100%;">
                  <textarea class="mdl-textfield__input" type="text" rows="5" id="g_condition" name="g_condition" maxlength="300">${g.g_condition }</textarea>
                </div>
              </div>
              <div class="mdl-card__actions">
                <a href="#" class="mdl-button"></a>
              </div>
            </div>
          </section>
          <section class="section--center mdl-grid mdl-grid--no-spacing mdl-shadow--2dp">
            <div class="mdl-card mdl-cell mdl-cell--12-col">
              <div class="mdl-card__supporting-text mdl-typography--text-left">
                <h4>Contact us</h4>
                <div id="map"></div>
				<br>
				<a id="addrSearch" class="android-more-button mdl-button mdl-js-button mdl-button--raised mdl-button--accent mdl-js-ripple-effect">Find Address</a><br>
	    		<div class="mdl-textfield mdl-js-textfield">
	    		  <input class="mdl-textfield__input mdl-work-content__input" type="text" pattern="-?[0-9]*(\.[0-9]+)?" id="m_post" name="g_post" maxlength="6" readonly="readonly" placeholder="Post Code.." value="${g.g_post }">
	  			</div>
	    		<div class="mdl-textfield mdl-js-textfield">
	   		 	  <input class="mdl-textfield__input mdl-work-content__input" type="text" id="m_addr" name="g_addr" readonly="readonly" placeholder="Road Address.." value="${g.g_addr }">
	    		</div><br>
	    		<div class="mdl-textfield mdl-js-textfield">
	   		 	  <input class="mdl-textfield__input mdl-work-content__input" type="text" id="m_addrdetail" name="g_addrdetail" placeholder="Detail Address.." value="${g.g_addrdetail }">
	    		</div><br>
	    		<div class="mdl-textfield mdl-js-textfield mdl-textfield--floating-label">
	   		 	  <input class="mdl-textfield__input mdl-work-content__input" type="text" id="m_station" name="g_station" pattern="[가-힣]*" placeholder="Subway Station.." value="${g.g_station }">
	    		</div><br>
				<div class="mdl-textfield mdl-js-textfield">
					<input class="mdl-textfield__input mdl-work-content__input" type="text" name="g_tel" placeholder="Telephone.." value="${g.g_tel }">
				</div><br>
				<div class="mdl-textfield mdl-js-textfield">
					<input class="mdl-textfield__input mdl-work-content__input" type="text" name="g_email" placeholder="E-mail.." value="${g.g_email }">
				</div>
              </div>
              <div class="mdl-card__actions">
                <c:if test="${sessionScope.loginMember.m_id == 'test' }">
	                <button type="submit" class="mdl-button mdl-js-button mdl-button--raised mdl-button--colored mdl-js-ripple-effect">Complete</button>&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
                	<a onclick="deleteCompany(${g.g_no });" class="mdl-button mdl-js-button mdl-button--raised mdl-button--accent mdl-js-ripple-effect">Delete</a>
                </c:if>
              </div>
            </div>
          </section>
          <div class="mdl-layout__tab-panel" id="features">
          <section class="section--center mdl-grid mdl-grid--no-spacing">
            <div class="mdl-cell mdl-cell--12-col">
            </div>
           </section>
          </div>
      </main>
    </form>
</div>
		<script src="https://code.getmdl.io/1.3.0/material.min.js"></script>
		<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
		<script src="resources/js/check.js"></script>
  		<script src="resources/js/validCheck.js"></script>
  		<script src="http://dmaps.daum.net/map_js_init/postcode.v2.js"></script>
    	<script src="resources/js/execDaumPostcode.js"></script>
    	<script src="//dapi.kakao.com/v2/maps/sdk.js?appkey=7d59a19ccee2485f7bedede2b51ec6f9"></script>
    	<script type="text/javascript">
	    	$(function(){
	    		exeDaumMap();
	    		execDaumPostcode();
	    		uploadFile();
	    	});
    	</script>
</body>
</html>