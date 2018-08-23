<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page session="false" %>
<html>
<head>
<meta charset="UTF-8">
<title>등록페이지</title>
</head>
<body>
	<h1>등록 페이지</h1>
	<form name="register" action="./register" method="POST">
	<table>
		<tr>
			<th>지역</th>
			<td><input type="text" name="area" placeholder="지역이름"></td>			
		</tr>
		<tr>
			<th>구</th>
			<td><input type="text" name="gu" placeholder="구이름"></td>			
		</tr>
		<tr>
			<th>동</th>
			<td><input type="text" name="dong" placeholder="동이름"></td>			
		</tr>
		<tr>
			<th>지역번호</th>
			<td><input type="text" name="areanum" placeholder="지역번호 이름"></td>			
		</tr>
		<tr>
			<td><button type="submit">등록</button></td>
		</tr>
	</table>
	</form>
</body>
</html>