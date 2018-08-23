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
	<h1>job</h1>
		<form>
			<input type="hidden" name="num" value="${readJob.num }">		
		</form>
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
			<td>${readJob.num }</td>
			<td>${readJob.area }</td>
			<td>${readJob.gu }</td>
			<td>${readJob.dong }</td>
			<td>${readJob.areanum }</td>
			<td>${readJob.struck }</td>
			<td><fmt:formatDate pattern="yyyy-MM-dd HH:mm" value="${readJob.create_date }"/></td>
		</tr>
		
	</table>
	</div>
	<div class="button">
		<input type="submit" class="modify" name="modify" value="수정하기">
		<input type="submit" class="delete" name="delete" value="삭제하기">
		<input type="submit" value="목록보기" onclick="back()">
	</div>
</body>
</html>

<script>
	function back(){
		self.location="./login";
	}
</script>