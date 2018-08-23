<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%@ page session="false" %>

<html>
<link rel="stylesheet" type="text/css" href="../css/list_all.css">
<link href="./resources/css/list_all.css" rel="stylesheet"/>
<head>
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


	<div class="header">
	<h1>공지사항</h1>
	</div>
	
	
		
	<div class="list">
		<button type="submit" class="register" onclick="register()">공지등록</button>
		<table>
	<tr>
		<th>번호</th>
		<th>제목</th>
		<th>내용</th>
		<th>글쓴이</th>
		<th>올린날짜</th>
		<th>조회수</th>
		
	</tr>
	<c:forEach items="${noticeList }" var="noticeList">
		<tr>
			<td>${noticeList.num }</td>
			<td><a href="./noticeRead?num=${noticeList.num }">${noticeList.title }</a></td>
			<td>${noticeList.content }</td>
			<td>${noticeList.writer }</td>
			<td><fmt:formatDate pattern="yyyy-MM-dd HH:mm" value="${noticeList.regdate }"/></td>
			<td>${noticeList.viewcnt }</td>
		
		</tr>
	</c:forEach>
	
	</table>
		<ul>
			<c:if test="${pageMaker.prev }">
				<li><a
					href="noticePage?page=${pageMaker.startPage }">&laquo;</a></li>
			</c:if>

			<c:forEach begin="${pageMaker.startPage }"
				end="${pageMaker.endPage }" var="idx">
				<li
					<c:out value="${pageMaker.cri.page == idx? 'class=active':'' }"/>>
					<a href="noticePage?page=${idx }">${idx }</a>
				</li>
			</c:forEach>

			<c:if test="${pageMaker.next && pageMaker.endPage>0 }">
				<li><a
					href="noticePage?page=${pageMaker.endPage+1 }">&raquo;</a></li>
			</c:if>

		</ul>
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
	function register(){
		location.href="./insert_notice";
	}
	function notice(){
		location.href="./notice"; 
	}
	function allList(){
		location.href="./index";
	}
	
</script>
</html>