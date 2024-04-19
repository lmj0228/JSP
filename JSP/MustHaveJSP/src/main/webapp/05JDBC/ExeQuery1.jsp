<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.Statement"%>
<%@page import="java.sql.Connection"%>
<%@page import="common.JDBConnect"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>JDBC</title>
</head>
<body>
	<h2>회원 목록 조회 테스트(excuteQuery() 사용)</h2>
	<table border="1">
		<tr>
			<th>num</th>
			<th>title</th>
			<th>content</th>
			<th>name</th>
			<th>postdate</th>
			<th>visitcount</th>
		</tr>
		<%
		// DB에 연결
		JDBConnect jdbc = new JDBConnect();

		// 쿼리문 생성
		String sql = "SELECT * " + "FROM board " + "where name = 'musthave'";
		Statement stmt = jdbc.con.createStatement();

		// 쿼리 수행
		ResultSet rs = stmt.executeQuery(sql);

		// 결과 확인(웹 페이지에 출력)
		while (rs.next()) {
			int num = rs.getInt(1);
			String title = rs.getString(2);
			String content = rs.getString(3);
			String name = rs.getString(4);
			java.sql.Date postdate = rs.getDate(5);
			int visitcount = rs.getInt(6);
		%>
		<tr>
			<td><%=num%></td>
			<td><%=title%></td>
			<td><%=content%></td>
			<td><%=name%></td>
			<td><%=postdate%></td>
			<td><%=visitcount%></td>
		</tr>
		<%
		//out.println(String.format("%s %s %s %s %s %s", num, title, content, name, postdate, visitcount) + "<br/>");
		}
		// 연결 닫기
		jdbc.close();
		%>
	</table>
</body>
</html>