<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt"%>


<style>
#data-table {
	border: 1px solid #333;
	border-collapse: collapse;
	width: 100%;
	height:100%
}

#data-table,th, td {
	border: 1px solid #333;
	text-align: center;
}
</style>

<link rel="stylesheet" type="text/css" href="../css/list_all.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script>

<html>
<html class="no-js" lang="">
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

			<div class="search">
				<select name="search_struck" id="search_struck">
					<option value="null"
						<c:out value="${cri.search_struck ==null?'selected':''}"/>>>공간</option>
					<option value="house_ju"
						<c:out value="${cri.search_struck eq 'house_ju'?'selected':'' }"/>>>주택</option>
					<option value="house_one"
						<c:out value="${cri.search_struck eq 'house_one'?'selected':'' }"/>>>원룸</option>
					<option value="jobarea"
						<c:out value="${cri.search_struck eq 'jobarea'?'selected':'' }"/>>>회사</option>
					<option value="shoparea"
						<c:out value="${cri.search_struck eq 'shoparea'?'selected':'' }"/>>>상가</option>
				</select>
				
				 <select name="search_money" id="search_money">
					<option value="null" class="money">
						<c:out value="${cri.search_money ==null ?'selected':''}" />보증금
					</option>
					<option value="money_300up" class="money">
						<c:out value="${cri.search_money eq 'money_300up'?'selected':'' }" />>300이상
					</option>
					<option value="money_300down" class="money">
						<c:out
							value="${cri.search_money eq 'money_300down'?'selected':''}" />>300이하
					</option>
					<option value="money_200down" class="money">
						<c:out
							value="${cri.search_money eq 'money_200down'?'selected':''}" />>200이하
					</option>
					<option value="money_100down" class="money">
						<c:out
							value="${cri.search_money eq 'money_100down'?'selected':''}" />>100이하
					</option>
				</select> <select name="search_area" id="search_area">
					<option value=null>
						<c:out value="${cri.search_area ==null ?'selected':''}" />>지역
					</option>
					<option value="area_busan">
						<c:out value="${cri.search_area eq 'area_busan'?'selected':''}" />>부산
					</option>
				</select>
				<button id='searchBtn' onclick="search()">검색</button>
			</div>
				<button type="submit" class="register" onclick="register()">등록</button>
			<div class="col-sm-12 col-lg-12">
				<table id="data-table">
					<thead>
						<tr>
							<th>번호</th>
							<th>지역</th>
							<th>구</th>
							<th>동</th>
							<th>지역번호</th>
							<th>구조</th>
							<th>보증금</th>
							<th>올린날짜</th>
						</tr>
					</thead>
					<c:forEach items="${listAll }" var="listAll">
						<tr>
							<td>${listAll.num }</td>
							<td><a
								href="./listRead${pageMaker.makeSearch(pageMaker.cri.page)}&struck=${listAll.struck }/${listAll.num}">${listAll.area }</a></td>
							<td>${listAll.gu }</td>
							<td>${listAll.dong }</td>
							<td>${listAll.areanum }</td>
							<td>${listAll.struck }</td>
							<td>${listAll.money }</td>
							<td><fmt:formatDate pattern="yyyy-MM-dd HH:mm"
									value="${listAll.create_date }" /></td>
						</tr>
					</c:forEach>

				</table>


				<div id="paging">
					<ul>
						<c:if test="${pageMaker.prev }">
							<li><a
								href="./listPage${pageMaker.makeSearch(pageMaker.startPage-1) }">&laquo;</a></li>
						</c:if>

						<c:forEach begin="${pageMaker.startPage }"
							end="${pageMaker.endPage }" var="idx">
							<li <c:out value="${pageMaker.cri.page==idx?'class=active':''}"/>>
								<a href="./listPage${pageMaker.makeSearch(idx) }">${idx }</a>
							</li>
						</c:forEach>

						<c:if test="${pageMaker.next && pageMaker.endPage>0 }">
							<li><a
								href="./listPage${pageMaker.makeSearch(pageMaker.endPage+1) }">&raquo;</a></li>
						</c:if>

					</ul>
				</div>
			</div>
</body>
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
	function register() {
		location.href = "./create";
	}
	function notice() {
		location.href = "./notice";
	}
	function allList() {
		location.href = "./index";
	}

	$(document).ready(function(){
		$('#searchBtn').on("click",function(event){
			location.href="./searchLogin"
					+'${pageMaker.makeQuery(1)}'
					+"&search_struck="
					+$('#search_struck option:selected').val()
					+"&search_money="
					+$('#search_money option:selected').val()
					+"&search_area="
					+$('#search_area option:selected').val();
					
		});
	});
</script>
</html>