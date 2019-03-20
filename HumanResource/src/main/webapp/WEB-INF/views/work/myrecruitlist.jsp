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
	<link rel="stylesheet" href="resources/css/mdl-selectfield.min.css">
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
						<th class="mdl-data-table__cell--non-numeric">Recruit</th>
						<th class="mdl-data-table__cell--non-numeric">Time</th>
						<th class="mdl-data-table__cell--non-numeric">State</th>
						<th class="mdl-data-table__cell--non-numeric">Contract</th>
						<th class="mdl-data-table__cell--non-numeric">Cancel</th>
					</tr>
				</thead>
				<tbody>
					<tr style="cursor: pointer;">
						<td class="mdl-data-table__cell--non-numeric">2019-03-22</td>
						<td class="mdl-data-table__cell--non-numeric">SOLDESK</td>
						<td class="mdl-data-table__cell--non-numeric">Programmer</td>
						<td class="mdl-data-table__cell--non-numeric">09:00~18:00</td>
						<td class="mdl-data-table__cell--non-numeric"></td>
						<td class="mdl-data-table__cell--non-numeric">
						  <a href="" class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect">Download</a>
						</td>
						<td class="mdl-data-table__cell--non-numeric">
						  <a href="" class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect">Cancel</a>
						</td>
					</tr>
					<tr style="cursor: pointer;">
						<td class="mdl-data-table__cell--non-numeric">2019-03-25</td>
						<td class="mdl-data-table__cell--non-numeric">SOLDESK</td>
						<td class="mdl-data-table__cell--non-numeric">Programmer</td>
						<td class="mdl-data-table__cell--non-numeric">09:00~18:00</td>
						<td class="mdl-data-table__cell--non-numeric"></td>
						<td class="mdl-data-table__cell--non-numeric">
						  <a href="" class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect">Download</a>
						</td>
						<td class="mdl-data-table__cell--non-numeric">
						  <a href="" class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect">Cancel</a>
						</td>
					</tr>
					<tr style="cursor: pointer;">
						<td class="mdl-data-table__cell--non-numeric">2019-03-26</td>
						<td class="mdl-data-table__cell--non-numeric">SOLDESK</td>
						<td class="mdl-data-table__cell--non-numeric">Programmer</td>
						<td class="mdl-data-table__cell--non-numeric">09:00~18:00</td>
						<td class="mdl-data-table__cell--non-numeric"></td>
						<td class="mdl-data-table__cell--non-numeric">
						  <a href="" class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect">Download</a>
						</td>
						<td class="mdl-data-table__cell--non-numeric">
						  <a href="" class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect">Cancel</a>
						</td>
					</tr>
					<tr style="cursor: pointer;">
						<td class="mdl-data-table__cell--non-numeric">2019-03-27</td>
						<td class="mdl-data-table__cell--non-numeric">SOLDESK</td>
						<td class="mdl-data-table__cell--non-numeric">Programmer</td>
						<td class="mdl-data-table__cell--non-numeric">09:00~18:00</td>
						<td class="mdl-data-table__cell--non-numeric"></td>
						<td class="mdl-data-table__cell--non-numeric">
						  <a href="" class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect">Download</a>
						</td>
						<td class="mdl-data-table__cell--non-numeric">
						  <a href="" class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect">Cancel</a>
						</td>
					</tr>
				</tbody>
			</table>
			<br> 
			<i class="material-icons">first_page</i> <i class="material-icons">chevron_left</i> 
			<i class="material-icons">looks_one</i>
			<i class="material-icons">looks_two</i> 
			<i class="material-icons">looks_3</i>
			<i class="material-icons">chevron_right</i> <i class="material-icons">last_page</i>
			<br>
		</div>

		<script src="https://code.getmdl.io/1.3.0/material.min.js"></script>
		<script src="resources/js/mdl-selectfield.min.js"></script>
		<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
</body>
</html>