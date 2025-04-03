<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import ="java.sql.*" %>
<%
	request.setCharacterEncoding("utf-8");
	String id = request.getParameter("id");
	String name = request.getParameter("name");
	String pwd = request.getParameter("pwd");
	int i = 0;
	//1. DB 연동 드라이버 로드
	//try{
	Class.forName("org.mariadb.jdbc.Driver");
	//2. 연결 객체 생성
	String url = "jdbc:mariadb://localhost:3306/backend";
	try (
	Connection con = DriverManager.getConnection(url, "root", "1111");
	//3. 생성된 연결을 통해 SQL문 실행 의뢰 준비
	PreparedStatement pstmt = con.prepareStatement("insert into user (id, name, pwd) values(?, ?, ?)")) {
	//4. SQL 실행
		pstmt.setString(1, id);
		pstmt.setString(2, name);
		pstmt.setString(3, pwd);

		i = pstmt.executeUpdate(); 
	
		con.close();
		pstmt.close();
	}
	//5. 객체 해제
	//6. list.jsp로 이동	
	response.sendRedirect("list.jsp");
%>

<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<title>Insert title here</title>
</head>
<body>
	<%= i %>행이 입력되었습니다!
</body>
</html>