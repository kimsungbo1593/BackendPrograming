<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시글</title>
</head>
<body>
	<%
		request.setCharacterEncoding("utf-8");
		String board01 = request.getParameter("board01");
		String name = request.getParameter("name");
		String board02 = request.getParameter("board02");
	%>
	
	제목 : <%= board01 %>
	닉네임 : <%= name %> <br> <br>
	내용 : <%= board02 %> <br>
</body>
</html>