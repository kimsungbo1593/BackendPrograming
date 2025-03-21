<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

<%request.setCharacterEncoding("utf-8");
	
	int x = Integer.parseInt(request.getParameter("x"));
	int y = Integer.parseInt(request.getParameter("y"));
	%>
	
	String operation = request.getParameter("operation");
    float result = 0;
    String message = "";

    if (operation != null) {
        switch (operation) {
            case "+":
                result = x + y;
                message = "덧셈 결과는 : " + result;
                break;
            case "-":
                result = x - y;
                message = "뺄셈 결과는 : " + result;
                break;
            case "*":
                result = x * y;
                message = "곱셈 결과는 : " + result;
                break;
            case "/":
                if (y != 0) {
                    result = (float) x / y;
                    message = "나눗셈 결과는 : " + result;
                } else {
                    message = "나눗셈 불능입니다. 0으로 나눌 수 없습니다.";
                }
                break;
            default:
                message = "";
                break;
        }
    }
	
	<%= message %>

</body>
</html>