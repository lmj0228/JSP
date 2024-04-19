<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<%! 
public int add(int num1, int num2) {
	return num1 + num2;	
}
%>

<%
int num1 = 0;
int num2 = 0;
try {
 num1 = Integer.parseInt(request.getParameter("num1")) ;
 num2 = Integer.parseInt(request.getParameter("num2")) ;
} catch (Exception e) {
	out.print("숫자를 입력하세요.");
}
%>

<body>
<%
int result = add(10, 20);
%>
덧셈 결과 1 : <%= result %> <br />
덧셈 결과 2 : <%= add(num1, num2) %>
</body>
</html>
