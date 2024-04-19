<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>CookieResult.jsp</title>
</head>
<body>
	<h2>쿠키값 확인하기(쿠키가 생성된 이후의 페이지)</h2>
	<%
	Cookie[] cookies = request.getCookies();
	if (cookies != null) {
		for (int i = 0; i < cookies.length; i++) {
			String cookieName = cookies[i].getName();
			String cookieValue = cookies[i].getValue();
			// 화면에 출력
			out.println(String.format("%s : %s<br/>", cookieName, cookieValue));
		}
	}
	%>

	<h2>3. 페이지 이동 후 쿠키값 확인하기</h2>
	<a href="CookieResult.jsp">
	다음 페이지에서 쿠키값 확인하기
	</a>
</body>
</html>