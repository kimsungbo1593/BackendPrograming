	<%@ page language="java" contentType="text/html; charset=UTF-8"
	    pageEncoding="UTF-8"
	    import="java.sql.*"  %>
	    
	<%
		request.setCharacterEncoding("utf-8");
		String id = request.getParameter("id");
		Class.forName("org.mariadb.jdbc.Driver");
    // 2. DB 연결
    String url = "jdbc:mariadb://localhost:3306/backend";
    Connection con = DriverManager.getConnection(url, "root", "1111");
    // 3. SQL 실행 준비 (회원 삭제)
    //String sql = "DELETE FROM user (id, name, pwd)";
    String sql = "DELETE FROM user WHERE id = ?";
		PreparedStatement pstmt = con.prepareStatement(sql);
    pstmt.setString(1, id);
    // 4. SQL 실행
    int i = pstmt.executeUpdate();
	
    pstmt.close();
    con.close();
	%>
		
	<script>
			let ans = alert("삭제되었습니다!");
			if (!ans){
				location.href='list.jsp';
			}
	</script>