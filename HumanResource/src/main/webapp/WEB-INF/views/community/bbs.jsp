<!DOCTYPE html>
<html lang="en">
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
					<tr>
						<td class="mdl-data-table__cell--non-numeric">Acrylic (Transparent)</td>
						<td class="mdl-data-table__cell--non-numeric">James</td>
						<td>2019-02-21</td>
						<td>290</td>
					</tr>
					<tr>
						<td class="mdl-data-table__cell--non-numeric">Plywood (Birch)</td>
						<td class="mdl-data-table__cell--non-numeric">Mike</td>
						<td>2019-02-21</td>
						<td>125</td>
					</tr>
					<tr>
						<td class="mdl-data-table__cell--non-numeric">Laminate (Gold on Blue)</td>
						<td class="mdl-data-table__cell--non-numeric">Mary</td>
						<td>2019-02-21</td>
						<td>235</td>
					</tr>
				</tbody>
			</table>
			<br> <i class="material-icons">first_page</i> <i
				class="material-icons">chevron_left</i> <i class="material-icons">looks_one</i>
			<i class="material-icons">looks_two</i> <i class="material-icons">looks_3</i>
			<i class="material-icons">looks_4</i> <i class="material-icons">looks_5</i>
			<i class="material-icons">chevron_right</i> <i class="material-icons">last_page</i>
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
					<a href=""
						class="mdl-button mdl-js-button mdl-button--raised mdl-button--colored mdl-js-ripple-effect">Write</a>
				</div>
			</div>
		</div>

		<script src="https://code.getmdl.io/1.3.0/material.min.js"></script>
		<script src="resources/js/mdl-selectfield.min.js"></script>
		<script	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>
</body>
</html>