<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@page import="java.sql.*"%>

<%
	request.setCharacterEncoding("utf-8");
	String id = request.getParameter("id");
	String name = request.getParameter("name");
	String pwd = request.getParameter("pwd");
	
	if (id != null && name != null && pwd != null && !id.isEmpty() && !name.isEmpty() && !pwd.isEmpty()) {
	    // DB 삽입 처리
	} else {
	    // 값이 없으면 삽입하지 않도록 처리
	}
	
	//1. DB 연동 드라이버 로드
	Class.forName("org.mariadb.jdbc.Driver");
	//2. 연결 객체 생성
	String url = "jdbc:mariadb://localhost:3306/backend";;
	Connection con = DriverManager.getConnection(url, "root", "1111");
  ResultSet rs = null;
	//3. 생성된 연결을 통해 SQL문 실행 의뢰 준비
	String sql = "insert into user (id, name, pwd) values(?, ?, ?)";
	//4. SQL 실행
	PreparedStatement pstmt = con.prepareStatement(sql);
	pstmt.setString(1, id);
	pstmt.setString(2, name);
	pstmt.setString(3, pwd);
	
	int i = pstmt.executeUpdate();
	
	if(i==1) {
		//out.println(""); }
	}
    String selectSql = "SELECT id, name, pwd FROM user";
    pstmt = con.prepareStatement(selectSql);
    rs = pstmt.executeQuery();
	
	//5. 메모리에서 해지
%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>사용자 목록</title>
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.4.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.min.js"></script>
</head>
<body>
	<div class="container"><br>	
	<h1 class="text-center font-weight-bold">사용자 정보</h1>
	<br>
	<table class="table table-hover">
		<tr>
			<th>아이디</th>
			<th>이름</th>
			<th>비밀번호</th>
		</tr>
<% 
	//5. 결과집합 처리 
	while (rs.next()) {	%>	
		<tr>
			<td><a href="updateForm.jsp?id=<%= rs.getString("id") %>"><%=id %></a></td>
			<td><%= rs.getString("name") %></td>
			<td><%= rs.getString("pwd") %></td>
		</tr>
<% }
	//6. 연결 해제
	rs.close();
	pstmt.close();
	con.close();
%>
	</table>
	</div>	
</body>
</html>