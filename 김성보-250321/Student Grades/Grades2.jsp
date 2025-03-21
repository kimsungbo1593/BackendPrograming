<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	request.setCharacterEncoding("utf-8");
	
	String name = request.getParameter("name");
	
	int eng = Integer.parseInt(request.getParameter("eng"));
	int math = Integer.parseInt(request.getParameter("math"));
	int kor = Integer.parseInt(request.getParameter("kor"));
	%>
	학생명 : <%=name %><br><br>
	영어 : <%=eng %><br>
	수학 : <%=math %><br>
	국어 : <%=kor %><br>
	합계 : <%=eng+math+kor %>
	평균 : <%= String.format("%.2f", (eng + math + kor) / 3.0) %>
	_
</body>
</html>