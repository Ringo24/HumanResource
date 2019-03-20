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
			<!-- 급여신청 테이블 -->
		<form action="" method="post" name="requestForm">
		<h4>Request Payment</h4>
			<table class="mdl-data-table mdl-js-data-table mdl-shadow--2dp" style="max-width: 600px;">
				<tbody>
					<tr>
						<td class="mdl-data-table__cell--non-numeric">Bank Name</td>
						<td class="mdl-data-table__cell--non-numeric">
							<div class="mdl-textfield mdl-js-textfield">
								<input class="mdl-textfield__input" id="m_bank" name="m_bank" value="Shinhan Bank">
							</div>
						</td>
					</tr>
					<tr>
						<td class="mdl-data-table__cell--non-numeric">Account</td>
						<td class="mdl-data-table__cell--non-numeric">
							<div class="mdl-textfield mdl-js-textfield">
								<input class="mdl-textfield__input" id="m_account" name="m_account" value="5532201232">
							</div>
						</td>
					</tr>
					<tr>
						<td class="mdl-data-table__cell--non-numeric">Depositor</td>
						<td class="mdl-data-table__cell--non-numeric">
							<div class="mdl-textfield mdl-js-textfield">
								<input class="mdl-textfield__input" id="m_accname" name="m_accname" value="Mike">
							</div>
						</td>
					</tr>
					<tr>
						<td class="mdl-data-table__cell--non-numeric">Working Date</td>
						<td class="mdl-data-table__cell--non-numeric">
							<div class="mdl-selectfield mdl-js-selectfield mdl-textfield--floating-label">
							<select class="mdl-selectfield__select" id="r_date" name="r_date">
								<option value="noselect"></option>
								<option value="20190319">2019-03-19</option>
								<option value="20190318">2019-03-18</option>
							</select>
							</div>
						</td>
					</tr>
					<tr>
						<td class="mdl-data-table__cell--non-numeric">Working Palce</td>
						<td class="mdl-data-table__cell--non-numeric">
							<div class="mdl-selectfield mdl-js-selectfield mdl-textfield--floating-label">
							<select class="mdl-selectfield__select" id="g_name" name="g_name">
								<option value="noselect"></option>
								<option value="soldesk">SOLDESK</option>
								<option value="theventi">The Venti</option>
							</select>
							</div>
						</td>
					</tr>
				</tbody>
			</table>
			<br>
			<button type="submit" class="mdl-button mdl-js-button mdl-button--raised mdl-button--colored mdl-js-ripple-effect" style="width: 200px;">Request</button>
		</form>
		
			<br><br>
			<!-- 급여신청내역 테이블 -->
			<h4>Request List</h4>
			<table class="mdl-data-table mdl-js-data-table mdl-shadow--2dp">
				<thead>
					<tr>
						<th class="mdl-data-table__cell--non-numeric">Date</th>
						<th class="mdl-data-table__cell--non-numeric">Place</th>
						<th class="mdl-data-table__cell--non-numeric">Request</th>
						<th class="mdl-data-table__cell--non-numeric">Approval</th>
						<th>Pay</th>
						<th class="mdl-data-table__cell--non-numeric">State</th>
						<th class="mdl-data-table__cell--non-numeric">Cancel</th>
					</tr>
				</thead>
				<tbody>
					<tr style="cursor: pointer;">
						<td class="mdl-data-table__cell--non-numeric">2019-03-19</td>
						<td class="mdl-data-table__cell--non-numeric">SOLDESK</td>
						<td class="mdl-data-table__cell--non-numeric">2019-03-20</td>
						<td class="mdl-data-table__cell--non-numeric"></td>
						<td>86,760</td>
						<td class="mdl-data-table__cell--non-numeric"></td>
						<td class="mdl-data-table__cell--non-numeric">
						  <a href="" class="mdl-button mdl-js-button mdl-button--raised mdl-js-ripple-effect">Cancel</a>
						</td>
					</tr>
					<tr style="cursor: pointer;">
						<td class="mdl-data-table__cell--non-numeric">2019-03-18</td>
						<td class="mdl-data-table__cell--non-numeric">SOLDESK</td>
						<td class="mdl-data-table__cell--non-numeric">2019-03-19</td>
						<td class="mdl-data-table__cell--non-numeric">2019-03-20</td>
						<td>86,760</td>
						<td class="mdl-data-table__cell--non-numeric">Completed</td>
						<td class="mdl-data-table__cell--non-numeric"></td>
					</tr>
					<tr style="cursor: pointer;">
						<td class="mdl-data-table__cell--non-numeric">2019-03-15</td>
						<td class="mdl-data-table__cell--non-numeric">SOLDESK</td>
						<td class="mdl-data-table__cell--non-numeric">2019-03-18</td>
						<td class="mdl-data-table__cell--non-numeric">2019-03-19</td>
						<td>86,760</td>
						<td class="mdl-data-table__cell--non-numeric">Completed</td>
						<td class="mdl-data-table__cell--non-numeric"></td>
					</tr>
					<tr style="cursor: pointer;">
						<td class="mdl-data-table__cell--non-numeric">2019-03-14</td>
						<td class="mdl-data-table__cell--non-numeric">SOLDESK</td>
						<td class="mdl-data-table__cell--non-numeric">2019-03-15</td>
						<td class="mdl-data-table__cell--non-numeric">2019-03-18</td>
						<td>86,760</td>
						<td class="mdl-data-table__cell--non-numeric">Completed</td>
						<td class="mdl-data-table__cell--non-numeric"></td>
					</tr>
					<tr style="cursor: pointer;">
						<td class="mdl-data-table__cell--non-numeric">2019-03-13</td>
						<td class="mdl-data-table__cell--non-numeric">SOLDESK</td>
						<td class="mdl-data-table__cell--non-numeric">2019-03-14</td>
						<td class="mdl-data-table__cell--non-numeric">2019-03-15</td>
						<td>86,760</td>
						<td class="mdl-data-table__cell--non-numeric">Completed</td>
						<td class="mdl-data-table__cell--non-numeric"></td>
					</tr>
					<tr style="cursor: pointer;">
						<td class="mdl-data-table__cell--non-numeric">2019-03-12</td>
						<td class="mdl-data-table__cell--non-numeric">SOLDESK</td>
						<td class="mdl-data-table__cell--non-numeric">2019-03-13</td>
						<td class="mdl-data-table__cell--non-numeric">2019-03-14</td>
						<td>86,760</td>
						<td class="mdl-data-table__cell--non-numeric">Completed</td>
						<td class="mdl-data-table__cell--non-numeric"></td>
					</tr>
					<tr style="cursor: pointer;">
						<td class="mdl-data-table__cell--non-numeric">2019-03-11</td>
						<td class="mdl-data-table__cell--non-numeric">SOLDESK</td>
						<td class="mdl-data-table__cell--non-numeric">2019-03-12</td>
						<td class="mdl-data-table__cell--non-numeric">2019-03-13</td>
						<td>86,760</td>
						<td class="mdl-data-table__cell--non-numeric">Completed</td>
						<td class="mdl-data-table__cell--non-numeric"></td>
					</tr>
				</tbody>
			</table>
			<br> 
			<i class="material-icons">first_page</i> <i class="material-icons">chevron_left</i> 
			<i class="material-icons">looks_one</i>
			<i class="material-icons">looks_two</i> 
			<i class="material-icons">looks_3</i>
			<i class="material-icons">looks_4</i> 
			<i class="material-icons">looks_5</i>
			<i class="material-icons">chevron_right</i> <i class="material-icons">last_page</i>
			<br>
		</div>

		<script src="https://code.getmdl.io/1.3.0/material.min.js"></script>
		<script src="resources/js/mdl-selectfield.min.js"></script>
		<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
</body>
</html>