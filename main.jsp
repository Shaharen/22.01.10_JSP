<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>로그인 페이지</h1>
	<% if ( session.getAttribute("id") == null ) { %>
	<form action="LoginService" align = "center">
		<table>
			<tr>
				<td><input type="text" name="id" placeholder = "아이디를 입력하세요"></td>
			</tr>
			<tr>
				<td><input type="password" name="pw" placeholder = "비밀번호를 입력하세요"></td>
			</tr>
			<tr>
				<td><input type="submit" value="로그인"></td>
			</tr>
		</table>
	</form>
	<% } else { %> 
		로그인 중입니다
		<br>
		<a href = "logout.jsp" >로그아웃 하기</a>
	<%}%>
</body>
</html>