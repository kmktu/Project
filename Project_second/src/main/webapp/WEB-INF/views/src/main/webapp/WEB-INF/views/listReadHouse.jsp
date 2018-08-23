<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<%@ page session="false" %>

<!DOCTYPE html>
<html>
<link rel="stylesheet" type="text/css" href="../css/list_all.css">
<link href="./resources/css/list_all.css" rel="stylesheet"/>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>house</h1>
		
		<div class="detail">
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
	<tr>
			<td>${readHouse.num }</td>
			<td>${readHouse.area }</td>
			<td>${readHouse.gu }</td>
			<td>${readHouse.dong }</td>
			<td>${readHouse.areanum }</td>
			<td>${readHouse.struck }</td>
			<td><fmt:formatDate pattern="yyyy-MM-dd HH:mm" value="${readHouse.create_date }"/></td>
		</tr>
		
	</table>
	</div>
	<div class="button">
	<form role="form" action="./housemodify" method="get">
			<input type="hidden" name="num" value="${readHouse.num }">	
			<input type="submit" class="modify"  value="수정하기" onclick="modify()">	
	</form>
	
	<form role="form2" action="./del_house" method="post">
		<input type="hidden" name="num" value="${readHouse.num }">	
		<input type="submit" class="delete"  value="삭제하기" >
	</form>
		<input type="submit" value="목록보기" onclick="back()">
	</div>
</body>
</html>

<script>
	function del(){
		self.location="./del_house";
	}

	function back(){
		self.location="./login";
	}
</script>