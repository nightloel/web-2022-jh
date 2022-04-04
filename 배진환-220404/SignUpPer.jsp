<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>
<body>
<%
		request.setCharacterEncoding("utf-8");
%>
		아이디: <%=request.getParameter("id") %><br>
		비밀번호: <%=request.getParameter("pw") %><br>
		성별: <%=request.getParameter("gender") %><br>
		가입경로: <%=request.getParameter("intro") %><br>
		보유능력: <%=request.getParameter("spec") %><br>
		메모: <%=request.getParameter("memo") %><br>
		<%
request.setCharacterEncoding("utf-8");
String[]lang = request.getParameterValues("lang");
String[]hobby = request.getParameterValues("hobby");
%>
관심언어 :
<%
	for(int i=0; i<lang.length; i++){
		out.println(lang[i]+"");
	}
%>
<br>
취미 :
<%
	for(int i=0; i<hobby.length; i++){
		out.println(hobby[i]+"");
	}
%>
</body>
</html>