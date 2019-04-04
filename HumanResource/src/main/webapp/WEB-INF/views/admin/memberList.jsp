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
	<link rel="stylesheet" href="resources/css/admin_styles.css">
</head>

<body>
	<!-- 컨텐츠(content) 영역 -->
		<a name="top"></a>
		<div class="android-screen-section mdl-typography--text-center">
			<ul class="demo-list-two mdl-list">
		  <c:forEach var="m" items="${MemberAl }">
			  <li class="mdl-list__item mdl-list__item--two-line">
			    <span class="mdl-list__item-primary-content">
			      <i class="material-icons mdl-list__item-avatar" style="background:url('resources/file/${m.m_photo }') center/55px no-repeat #FFFFFF;"></i>
			      <span>${m.m_name }</span>
			      <span class="mdl-list__item-sub-title">62 Episodes</span>
			    </span>
			    <span class="mdl-list__item-secondary-content">
			    <c:if test="${m.m_id == 'test' }">
			      <span class="mdl-list__item-secondary-info">Admin</span>
			    </c:if>
			      <a class="mdl-list__item-secondary-action" href="#"><i class="material-icons">star</i></a>
			    </span>
			  </li>
		  </c:forEach>
			</ul>
			<br>
	<!-- page -->
			<div class="mdl-pagination">
		      <ul class="pagination">
		      <c:choose>
				<c:when test="${curPage == 1 }">
			    	<li class="disabled"><a href="#!"><i class="material-icons">chevron_left</i></a></li>
				</c:when>
				<c:otherwise>
			    	<li class="waves-effect mdl-js-button mdl-js-ripple-effect"><a href="Page?p=1"><i class="material-icons">chevron_left</i></a></li>
				</c:otherwise>
	   		  </c:choose>
			    	<c:forEach var="p" begin="1" end="${pageCount }">
			    		<c:choose>
							<c:when test="${curPage == p }">
					    		<li class="active"><a href="Page?p=${p }">${p }</a></li>
							</c:when>
							<c:otherwise>
						    	<li class="waves-effect mdl-js-button mdl-js-ripple-effect"><a href="Page?p=${p }">${p }</a></li>
							</c:otherwise>
			    		</c:choose>
			    	</c:forEach>
		      <c:choose>
				<c:when test="${curPage == pageCount }">
			    	<li class="disabled"><a href="#!"><i class="material-icons">chevron_right</i></a></li>
				</c:when>
				<c:otherwise>
			    	<li class="waves-effect mdl-js-button mdl-js-ripple-effect"><a href="Page?p=${curPage }"><i class="material-icons">chevron_right</i></a></li>
				</c:otherwise>
	   		  </c:choose>
		  	  </ul>
	      </div>
			<br>
			<div class="mdl-grid">
				<div class="mdl-cell mdl-cell--5-col"></div>
				<div class="mdl-cell mdl-cell--7-col">
					<div
						class="android-search-box mdl-textfield mdl-js-textfield mdl-textfield--expandable mdl-textfield--full-width">
						<label class="mdl-button mdl-js-button mdl-button--icon"
							for="search-aticle"> <i class="material-icons">search</i>
						</label>
						<!-- 검색어 input -->
						<div class="mdl-textfield__expandable-holder">
							<input class="mdl-textfield__input" type="text"
								id="search-aticle">
						</div>
					</div>
				</div>
			</div>
		</div>

		<script src="https://code.getmdl.io/1.3.0/material.min.js"></script>
		<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
</body>
</html>