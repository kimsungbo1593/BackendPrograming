<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입2</title>
</head>
<body>

	<%
		request.setCharacterEncoding("utf-8");
		String id = request.getParameter("id");
		String password = request.getParameter("password");
		String gender = request.getParameter("gender");
		String signupSource = request.getParameter("dropdown");
		String address = request.getParameter("list");
		String memo = request.getParameter("memo");
	%>
	
	아이디 : <%= id %> <br>
	비밀번호 : <%= password %> <br>
	성별 : <%= gender %> <br>
	가입경로 : <%= signupSource %> <br>
	주소 : <%= address %> <br>
	메모 : <%= memo %> <br>
	
</body>
</html>
