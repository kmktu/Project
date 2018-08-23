<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page session="false" %>
<html>
<head>
<meta charset="utf-8">
<meta http-equiv="X-UA-Compatible" content="IE=edge">
<title>부동산 매물 관리 페이지</title>
<meta name="description" content="Sufee Admin - HTML5 Admin Template">
<meta name="viewport" content="width=device-width, initial-scale=1">

<link rel="apple-touch-icon" href="apple-icon.png">
<link rel="shortcut icon" href="favicon.ico">

<link rel="stylesheet" href="resources/assets/css/normalize.css">
<link rel="stylesheet" href="resources/assets/css/bootstrap.min.css">
<link rel="stylesheet" href="resources/assets/css/font-awesome.min.css">
<link rel="stylesheet" href="resources/assets/css/themify-icons.css">
<link rel="stylesheet" href="resources/assets/css/flag-icon.min.css">
<link rel="stylesheet" href="resources/assets/css/cs-skin-elastic.css">
<!-- <link rel="stylesheet" href="assets/css/bootstrap-select.less"> -->
<link rel="stylesheet" href="resources/assets/scss/style.css">
<link href="resources/assets/css/lib/vector-map/jqvmap.min.css"
	rel="stylesheet">

<link
	href='https://fonts.googleapis.com/css?family=Open+Sans:400,600,700,800'
	rel='stylesheet' type='text/css'>

<!-- <script type="text/javascript" src="https://cdn.jsdelivr.net/html5shiv/3.7.3/html5shiv.min.js"></script> -->

</head>
<body>


	<!-- Left Panel -->

	<aside id="left-panel" class="left-panel">
		<jsp:include page="sidebar.jsp" />
	</aside>

	<!-- Left Panel -->



	<div id="right-panel" class="right-panel">

		<!-- Header-->
		<header id="header" class="header">

			<jsp:include page="top.jsp" />

		</header>

		<!-- 메인 상단  -->
		<div class="breadcrumbs">
			<div class="col-sm-4">
				<div class="page-header float-left">
					<div class="page-title">
						<h1><a href="./logout" name="logout">로그아웃</a></h1>
					</div>
				</div>
			</div>
			<div class="col-sm-8">
				<div class="page-header float-right">
					<div class="page-title">
						<ol class="breadcrumb text-right">
							<li class="active"></li>
						</ol>
					</div>
				</div>
			</div>
		</div>

		<div class="content mt-3">

			<div class="col-sm-12">
				<div class="alert  alert-success alert-dismissible fade show"
					role="alert">
					<span class="badge badge-pill badge-success">!!!!!!</span>공지사항을
					확인하세요.
					<button type="button" class="close" data-dismiss="alert"
						aria-label="Close">
						<span aria-hidden="true">&times;</span>
					</button>
				</div>
			</div>
		<div class="col-sm-12 col-lg-12">
	<h1>등록 페이지</h1>
	<form name="form" action="./insert_notice" method="POST">
	<table>
		<tr>
			<th>제목</th>
			<td><input type="text" name="title" placeholder="제목"></td>			
		</tr>
		<tr>
			<th>내용</th>
			<td>
			<textarea name="content" placeholder="내용"></textarea>
		</tr>
		<tr>
			<th>글쓴이</th>
			<td><input type="text" name="writer" placeholder="글쓴이"></td>			
		</tr>
				
		<tr>
			<td><button type="submit" id="registerBtn">등록</button></td>
		</tr>
	</table>
	</form>
</body>
</html>

<script src="//code.jquery.com/jquery-1.11.3.min.js"></script>
<script src="//code.jquery.com/jquery-1.11.3.min.js"> </script>
<script src="resourcesassets/js/vendor/jquery-2.1.4.min.js"></script>
<script
	src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.3/umd/popper.min.js"></script>
<script src="resourcesassets/js/plugins.js"></script>
<script src="resourcesassets/js/main.js"></script>


<script src="resources/assets/js/lib/chart-js/Chart.bundle.js"></script>
<script src="resources/assets/js/dashboard.js"></script>
<script src="resources/assets/js/widgets.js"></script>
<script src="resources/assets/js/lib/vector-map/jquery.vmap.js"></script>
<script src="resources/assets/js/lib/vector-map/jquery.vmap.min.js"></script>
<script
	src="resources/assets/js/lib/vector-map/jquery.vmap.sampledata.js"></script>
<script
	src="resources/assets/js/lib/vector-map/country/jquery.vmap.world.js"></script>
<script src="resources/assets/js/lib/data-table/datatables.min.js"></script>
<script
	src="resources/assets/js/lib/data-table/dataTables.bootstrap.min.js"></script>
<script
	src="resources/assets/js/lib/data-table/dataTables.buttons.min.js"></script>
<script
	src="resources/assets/js/lib/data-table/buttons.bootstrap.min.js"></script>
<script src="resources/assets/js/lib/data-table/jszip.min.js"></script>
<script src="resources/assets/js/lib/data-table/pdfmake.min.js"></script>
<script src="resources/assets/js/lib/data-table/vfs_fonts.js"></script>
<script src="resources/assets/js/lib/data-table/buttons.html5.min.js"></script>
<script src="resources/assets/js/lib/data-table/buttons.print.min.js"></script>
<script src="resources/assets/js/lib/data-table/buttons.colVis.min.js"></script>
<script src="resources/assets/js/lib/data-table/datatables-init.js"></script>
<script>
		
		
</script>