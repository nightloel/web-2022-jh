<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
    <%
    //String id = request.getParameter("id");//request객체의 id를 가져와쓴다
    //String pwd = request.getParameter("pwd");
    request.setCharacterEncoding("utf-8");
    %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	당신의 아이디는<%=request.getParameter("id") %>이고<br>
	암호는<%=request.getParameter("pwd") %>입니다..
</body>
</html>