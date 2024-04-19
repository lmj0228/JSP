<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>구구단 출력</title>
</head>
<body>
	<%
	try {
		int num = Integer.parseInt(request.getParameter("dan"));
		out.print("<h3>구구단 " + num + "단 출력<h3><br/>");
		for(int i = 1; i <= 9; i++){
			out.print(String.format("%d * %d = %d<br/>", num, i, num*i));
	}
	} catch (Exception e){}
	%>
</body>
</html>
