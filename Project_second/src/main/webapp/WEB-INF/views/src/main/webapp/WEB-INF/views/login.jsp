<%@ page language="java" contentType="text/html; charset=UTF-8"	pageEncoding="UTF-8" %>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%@ page session="false" %>

<link rel="stylesheet" type="text/css" href="../css/list_all.css">
<html>
<head>


<title>부동산</title>
<link href="./resources/css/list_all.css" rel="stylesheet"/>
</head>

<body>
	<div class="header">
	<h1>로그인성공</h1>
	</div>
	
	<div class="serch">
		<button class="dropbtn">버튼1</button>
		<div class="dropdown">
			<a href="#">메뉴1</a>
			<a href="#">메뉴2</a>
			<a href="#">메뉴3</a>
		</div>
	</div>
	
		
	<div class="list">
		<button type="submit" class="register" onclick="register()">등록</button>
	<table>
	<tr>
		<th>번호</th>
		<th>지역</th>
		<th>구</th>
		<th>동</th>
		<th>지역번호</th>
		<th>구조</th>
		<th>올린날짜</th>
	</tr>
	<c:forEach items="${listAll }" var="listAll">
		<tr>
			<td>${listAll.num }</td>
			<td><a href="./listRead?struck=${listAll.struck }/${listAll.num}">${listAll.area }</a></td>
			<td>${listAll.gu }</td>
			<td>${listAll.dong }</td>
			<td>${listAll.areanum }</td>
			<td>${listAll.struck }</td>
			<td><fmt:formatDate pattern="yyyy-MM-dd HH:mm" value="${listAll.create_date }"/></td>
		</tr>
	</c:forEach>
	
	</table>
		<ul>
			<c:if test="${pageMaker.prev }">
			<li><a href="listPage?page=${pageMaker.startPage-1 }">&laquo;</a></li>
			</c:if>
			
			<c:forEach begin="${pageMaker.startPage }" end="${pageMaker.endPage }" var="idx">
				<li 
					<c:out value="${pageMaker.cri.page==idx?'class=active':''}"/>>
					<a href="listPage?page=${idx }">${idx }</a>
				</li>
			</c:forEach>
			
			<c:if test="${pageMaker.next && pageMaker.endPage>0 }">
				<li><a href="listPage?page=${pageMaker.endPage+1 }">&raquo;</a></li>
			</c:if>
			
		</ul>
	</div>
	<div class="pageMaker">
		
	</div>
	
</body>
<script>
	function register(){
		location.href="./create";
	}
	
</script>
</html>