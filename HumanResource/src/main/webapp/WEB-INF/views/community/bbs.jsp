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
</head>

<body>
	<!-- 컨텐츠(content) 영역 -->
		<a name="top"></a>
		<div class="android-screen-section mdl-typography--text-center">
			<!-- 게시판 테이블 -->
			<table class="mdl-data-table mdl-js-data-table mdl-shadow--2dp">
				<thead>
					<tr>
						<th class="mdl-data-table__cell--non-numeric" width="70%">Title</th>
						<th class="mdl-data-table__cell--non-numeric">Writer</th>
						<th>Date</th>
						<th>Hit</th>
					</tr>
				</thead>
				<tbody>
				<c:forEach var="b" items="${BBSAl }">
					<tr onclick="location.href='Article?bbs=${param.bbs }&b_no=${b.b_no }'" style="cursor: pointer;">
						<td class="mdl-data-table__cell--non-numeric">
							<c:if test="${b.b_notice == 1 }">
							  <i class="material-icons" style="font-size: 11pt;">notification_important</i>
							  <b>
							</c:if>
							${b.b_title }
							<c:if test="${b.b_notice == 1 }">
							  </b>
							</c:if>
						</td>
						<td class="mdl-data-table__cell--non-numeric">${b.b_name }</td>
						<td><fmt:formatDate value="${b.b_date }" pattern="yyyy-MM-dd"/></td>
						<td>${b.b_hit }</td>
					</tr>
				</c:forEach>
				</tbody>
			</table>
			<br>
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
					<c:if test="${param.bbs == 'notice' && sessionScope.loginMember.m_id == 'test' }">
						<a href="Upload?bbs=${param.bbs }" class="mdl-button mdl-js-button mdl-button--raised mdl-button--colored mdl-js-ripple-effect">Write</a>
					</c:if>
					<c:if test="${param.bbs != 'notice' && sessionScope.loginMember != null }">
						<a href="Upload?bbs=${param.bbs }" class="mdl-button mdl-js-button mdl-button--raised mdl-button--colored mdl-js-ripple-effect">Write</a>
					</c:if>
				</div>
			</div>
		</div>

		<script src="https://code.getmdl.io/1.3.0/material.min.js"></script>
		<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
</body>
</html>