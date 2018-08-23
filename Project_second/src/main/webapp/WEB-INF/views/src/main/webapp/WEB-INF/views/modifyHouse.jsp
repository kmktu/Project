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
	<h1>modify</h1>
		
		<div class="detail">
		<form name="modifyhouse" action="./modifyhouse" method="post">
	<table>
	<tr>
		<th>번호</th>
		<th>지역</th>
		<th>구</th>
		<th>동</th>
		<th>지역번호</th>
		<th>구조</th>
	</tr>
	<tr>
			<td><input type="text" value="${houseVO.num }" name="num" readonly="readonly"></td>
			<td><input type="text" value="${houseVO.area }" name="area"></td>
			<td><input type="text" value="${houseVO.gu }" name="gu"></td>
			<td><input type="text" value="${houseVO.dong }" name="dong"></td>
			<td><input type="text" value="${houseVO.areanum }" name="areanum"></td>
			<td><input type="text" value="${houseVO.struck }" name="struck" readonly="readonly"></td>
	</tr>
		
	</table>
		<input type="submit" class="modify"  value="수정하기" >
	</form>
	</div>
	<div class="button">
	
	
		<input type="submit" value="목록보기" onclick="back()">
	</div>
</body>
</html>

<script>
	
	function back(){
		self.location="./login";
	}
</script>