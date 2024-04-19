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
		int col = Integer.parseInt(request.getParameter("col"));
		out.print("<h3>구구단 출력<h3><br/>");
		
		for(int i = 2; i <= 9; i+=col){			
			for(int j = 1; j <= 9; j++){			
				for(int k = 0; k < col; k++){
					if((k+i) > 9)
						break;
					out.print(String.format("%d * %d = %d", k+i, j, (k+i)*j));
					if((k+i)*j < 10)
						out.print("&nbsp".repeat(5));
					else
						out.print("&nbsp".repeat(4));					
				}
				out.print("<br/>");
			}
			out.print("<br/>");
		}
		
	} catch (Exception e){}
	%>
</body>
</html>
