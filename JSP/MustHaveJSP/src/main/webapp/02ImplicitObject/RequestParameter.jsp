<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>내장 객체 - request</title>
</head>
<body>
	<%
	request.setCharacterEncoding("UTF-8");
	String id = request.getParameter("id");
	String sex = request.getParameter("sex");
	String[] favo = request.getParameterValues("favo");
	
	%>

	<ul>
		<li>데이터 전송 방식: <%=request.getMethod()%></li>
		<li>URL : <%=request.getRequestURL()%></li>
		<li>URI : <%=request.getRequestURI()%></li>
		<li>프로토콜 : <%=request.getProtocol()%></li>
</body>
</html>
