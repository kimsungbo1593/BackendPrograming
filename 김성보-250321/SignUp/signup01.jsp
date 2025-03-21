<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>회원가입</title>
</head>
<body>
	<form method="post" action="signup02.jsp">
	
	<tr>
	<td> 아이디 </td>
	<td><input type="text" name="id"></td>
	<br>
	<td> 비밀번호 </td>
	<td><input type="password" name="password"></td>
	</tr>
	
	<br>
	
	<tr>
	<td>성별</td>
	<td>
	<input type="radio" name="gender" value="남">남
	<input type="radio" name="gender" value="여">여
	</td>
	</tr>
	
	<br>
	
	<tr>
	<td> 가입경로 </td>
		<select name="dropdown">
			<option value="웹검색">웹검색</option>
			<option value="지인소개">지인소개</option>
			<option value="기타">기타</option>
		</select>
	</tr>
		
		<br>
	
	<tr>
	<td> 주소지 </td>
		<select name="list" size="4">
			<option value="서울">서울</option>
			<option value="경기">경기</option>
			<option value="인천">인천</option>
			<option value="기타">기타</option>
		</select>
	</tr>
	
	<br>
	
	<tr>
	<td>메모</td>
	<td> <textarea name="memo" rows="5"></textarea> </td>
	</tr>
	
	<br>
	
	<input type="submit" value="가입">
	
	</form>
</body>
</html>