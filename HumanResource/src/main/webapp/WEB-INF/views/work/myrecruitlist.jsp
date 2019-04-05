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
			<!-- 나의 근무 테이블 -->
			<div>
				<h4>My Application List</h4>
			</div>
			<table class="mdl-data-table mdl-js-data-table mdl-shadow--2dp">
				<thead>
					<tr>
						<th class="mdl-data-table__cell--non-numeric">Date</th>
						<th class="mdl-data-table__cell--non-numeric">Place</th>
						<th class="mdl-data-table__cell--non-numeric">State</th>
						<th class="mdl-data-table__cell--non-numeric">Contract</th>
						<th class="mdl-data-table__cell--non-numeric">Cancel</th>
					</tr>
				</thead>
				<tbody>
				  <c:forEach var="a" items="${ApplicationAl }">
					<tr style="cursor: pointer;">
						<td class="mdl-data-table__cell--non-numeric"><fmt:formatDate value="${a.recruit.r_date }" pattern="yyyy-MM-dd"/></td>
						<td class="mdl-data-table__cell--non-numeric">${a.company.g_name }</td>
						<td class="mdl-data-table__cell--non-numeric">${a.a_state }</td>
						<td class="mdl-data-table__cell--non-numeric">
						  <a href="" class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect">Download</a>
						</td>
						<td class="mdl-data-table__cell--non-numeric">
						  <a href="" class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect">Cancel</a>
						</td>
					</tr>
				  </c:forEach>
				</tbody>
			</table>
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
		</div>

		<script src="https://code.getmdl.io/1.3.0/material.min.js"></script>
		<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
</body>
</html>