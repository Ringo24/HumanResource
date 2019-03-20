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
            <header class="section__play-btn mdl-cell mdl-cell--3-col-desktop mdl-cell--2-col-tablet mdl-cell--4-col-phone mdl-color--teal-100 mdl-color-text--white">
              <img src="http://www.solupia.co.kr/wp/wp-content/uploads/2016/06/logo_b2.png">
            </header>
            <div class="mdl-card mdl-cell mdl-cell--9-col-desktop mdl-cell--6-col-tablet mdl-cell--4-col-phone">
              <div class="mdl-card__supporting-text mdl-typography--text-left">
                <h4>SOLUPIA Co.</h4>
                Implementing, maintaining, and developing PC security solutions for 52 hours a week
              </div>
              <div class="mdl-card__actions mdl-typography--text-left">
                <a href="http://www.solupia.co.kr" target="_blank" class="mdl-button">Our homapage</a>
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
                  Java programmer, engineer. 3 people.
                </div>
                <div class="section__circle-container mdl-cell mdl-cell--2-col mdl-cell--1-col-phone">
                  <div class="section__circle-container__circle mdl-color--primary"></div>
                </div>
                <div class="section__text mdl-typography--text-left mdl-cell mdl-cell--10-col-desktop mdl-cell--6-col-tablet mdl-cell--3-col-phone">
                  <h5>Forms of employment</h5>
                  Regular worker. After 3 month later Internships.
                </div>
                <div class="section__circle-container mdl-cell mdl-cell--2-col mdl-cell--1-col-phone">
                  <div class="section__circle-container__circle mdl-color--primary"></div>
                </div>
                <div class="section__text mdl-typography--text-left mdl-cell mdl-cell--10-col-desktop mdl-cell--6-col-tablet mdl-cell--3-col-phone">
                  <h5>Required condition</h5>
                  Java programmer : JAVA(Spring, JPA, JavaScript), MySql<br>
                  Engineer : Linux, Windows, MySql, MsSql<br>
                  Positive Mind, Passion for new Technology.
                </div>
              </div>
              <div class="mdl-card__actions">
                <a href="http://www.solupia.co.kr/wp/06-2/%EC%B1%84%EC%9A%A9%EC%95%88%EB%82%B4/" target="_blank" class="mdl-button">Recruit Infomation</a>
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
                26 million won per year (80 percent on training).<br>
                a five-day workweek 09:00 to 18:00. <br>
                Sign up for four major insurance.<br><br>
				Mobile phone deposit support. <br>
				Four other non-insurance policies. <br>
				Support for IT qualifications and training costs.
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
				<img src="resources/images/google_map.png" width="480px">
				<p>서울특별시 영등포구 경인로 775 에이스하이테크시티 1-1동 411호 <br>07299</p>
				<p>Tel<br>
				+82 70 4610 7000</p>
				<p>E-Mail<br>
				사업부 : chang@solupia.co.kr<br>
				Security : chang@solupia.co.kr, djkim@solupia.co.kr<br>
				SW품질 : silver@solupia.co.kr</p>
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
</body>
</html>