<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%><%--page지시자로써 <%@로 시작한다,서블릿(톰캣)에알릴때씀 --%>
    <%@ page import="java.sql.*" %><%--jsp=import를 직접못써page지시자를쓴것,sql모든것--%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
</head>

<%
    int kor=Integer.parseInt(request.getParameter("kor"));
    int eng=Integer.parseInt(request.getParameter("eng"));
    int math=Integer.parseInt(request.getParameter("math"));
    int tot=kor+eng+math;
    //float avg=tot/3;
    
    out.println("kor");
    out.println("eng");
    out.println("math");
%>
<body>
결과<hr>
국어: <%=kor %><br>
영어: <%=eng %><br>
수학: <%=math %><br>
총점: <%=tot%><br>
평균:<%=String.format("%.2f",(float)tot/3) %><br><!--(실수)tot/3 나누고2자리까지만출력  -->
</body>
</html>