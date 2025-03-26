<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>게시판 글쓰기</title>
</head>
<body>
	<form method="post" action="board2.jsp">
	
	<tr>
	<td> 제목 </td>
	<td><input type="text" name="board01"></td>
	
	<td> 닉네임 </td>
	<td><input type="text" name="name"></td>
	<br> <br>
	</tr>
	<tr>
	<td> 내용 </td>
	<td> <textarea name="board02" rows="10" cols="30"></textarea> </td>
	</tr> <br> <br>
	
	<input type="submit" value="업로드">
	
	</form>

</body>
</html>