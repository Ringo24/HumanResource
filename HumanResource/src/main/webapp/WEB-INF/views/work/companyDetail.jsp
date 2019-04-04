<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<meta http-equiv="X-UA-Compatible" content="IE=edge">
	<meta name="description" content="Introducing Lollipop, a sweet new take on Android.">
	<meta name="viewport" content="width=device-width, initial-scale=1.0, minimum-scale=1.0">
	<title>Work Detail</title>

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
    <!-- <div class="mdl-layout mdl-js-layout"> -->
      <main class="mdl-layout__content">
          <section class="section--center mdl-grid mdl-grid--no-spacing mdl-shadow--2dp">
            <header class="section__play-btn mdl-cell mdl-cell--3-col-desktop mdl-cell--2-col-tablet mdl-cell--4-col-phone mdl-color--white mdl-color-text--white">
              <img src="${g.g_logo }" id="company-logo">
            </header>
            <div class="mdl-card mdl-cell mdl-cell--9-col-desktop mdl-cell--6-col-tablet mdl-cell--4-col-phone">
              <div class="mdl-card__supporting-text mdl-typography--text-left">
                <h4 id="companyName">${g.g_name }</h4>
                ${g.g_inst }
              </div>
              <div class="mdl-card__actions mdl-typography--text-left">
                <a href="${g.g_hp }" target="_blank" class="mdl-button">Our homepage</a>
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
                  ${g.g_recruit }
                </div>
                <div class="section__circle-container mdl-cell mdl-cell--2-col mdl-cell--1-col-phone">
                  <div class="section__circle-container__circle mdl-color--primary"></div>
                </div>
                <div class="section__text mdl-typography--text-left mdl-cell mdl-cell--10-col-desktop mdl-cell--6-col-tablet mdl-cell--3-col-phone">
                  <h5>Forms of employment</h5>
                  ${g.g_employment }
                </div>
                <div class="section__circle-container mdl-cell mdl-cell--2-col mdl-cell--1-col-phone">
                  <div class="section__circle-container__circle mdl-color--primary"></div>
                </div>
                <div class="section__text mdl-typography--text-left mdl-cell mdl-cell--10-col-desktop mdl-cell--6-col-tablet mdl-cell--3-col-phone">
                  <h5>Required condition</h5>
                  ${g.g_required }
                </div>
              </div>
              <div class="mdl-card__actions">
                <a href="${g.g_infoPage }" target="_blank" class="mdl-button">Recruit Infomation</a>
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
                ${g.g_condition }
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
                <div id="map" style="width:450px;height:350px;"></div>
				<p><span id="companyAddr">${g.g_addr }</span> ${g.g_addrdetail } <br>${g.g_post }<br>
				${g.g_station }역</p>
				<p>Tel<br>
				${g.g_tel }</p>
				<p>E-Mail<br>
				${g.g_email }
              </div>
              <div class="mdl-card__actions">
                <a href="#" class="mdl-button"></a>
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
    <!-- </div> -->
</div>
		<script src="https://code.getmdl.io/1.3.0/material.min.js"></script>
		<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
		<script src="//dapi.kakao.com/v2/maps/sdk.js?appkey=7d59a19ccee2485f7bedede2b51ec6f9&libraries=services"></script>
		<script src="resources/js/execDaumPostcode.js"></script>
    	<script type="text/javascript">
	    	$(function(){
	    		exeDaumMap();
	    	});
    	</script>
</body>
</html>