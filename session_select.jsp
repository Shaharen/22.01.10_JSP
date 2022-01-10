<%@page import="java.util.ArrayList"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<h1>세션 값 조회</h1>
	<!-- getAttribute : 저장된 값 호출
	세션 정보를 바로 출력할 때 사용 -->
	<%-- 세션에 저장된 값 : <%=session.getAttribute("msg") %> --%>
	
	<!-- 세션 정보를 활용할 때 -->
	<% 
		// Object로 저장된 자료 -> 다운캐스팅 필요
		String msg = (String)session.getAttribute("msg");
		out.print("세션에 저장된 값 : " + msg + "<br>");
		// Integer 사용 이유 ( Integer = int의 객체형 )
		// int num 으로 하면 받을 수는 있으나
		// 비어있을때 null이 아니라 오류가 뜸
		// 즉, 기본데이터 타입은 null값을 처리할 수 없다.
		Integer num = (Integer)session.getAttribute("num");
		out.print("세션에 저장된 값2 : " + num + "<br>");
		
		ArrayList<String> list = (ArrayList<String>)session.getAttribute("list");
		
		for(int i = 0 ; i <list.size(); i ++) {
			out.print(list.get(i) + " ");	
		}
	%>
	
	
</body>
</html>