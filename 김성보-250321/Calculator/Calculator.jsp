<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>

<form action="Calculator2.jsp" method="post">

	<tr>
	<td> x: </td>
	<td><input type="text" name="x"></td>
	<br>
	<td> y: </td>
	<td><input type="text" name="y"></td>
	</tr>
	
	<br>
	
	<input type="submit" name="operation" value="+"> <br>
	<input type="submit" name="operation" value="-"> <br>
	<input type="submit" name="operation" value="*"> <br>
	<input type="submit" name="operation" value="/"> <br>
	
</form>
	
</body>
</html>