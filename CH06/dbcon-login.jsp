<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.sql.*"%><!--이것을 import해야 Connection을 쓸수있음 -->
    <%
    //1. jdbc driver 등록
	Class.forName("org.mariadb.jdbc.Driver");
	//2. db 와 연결(Connection) 생성
	String url = "jdbc:mariadb://localhost:3306/jinhwandb";
	String user = "jinhwan";
	String pwd = "1111";
	Connection con = DriverManager.getConnection(url,user,pwd);
	//3. DB 연동
	String sql = "select * from login";
	Statement stmt = con.createStatement();
	//4. sql 실행 결과 확인
	ResultSet rs = stmt.executeQuery(sql);
	%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>DB 연결</title>
</head>
<body>
<table>
<tr>
<th>id</th>
<th>pwd</th>
</tr>
<tr>
<%
	//5. 결과 셋 확인
	while(rs.next()){
		String id = rs.getString("id");
		String passwd = rs.getString("pwd"); //rs를 가져와서 println으로 출력해 보여준다
		//out.println("<br>");
		%>
	<td><%=id %></td>
	<td><%=passwd %></td>
	</tr>
	<% }%>
	</table>
	<%
	//6. DB 연결 해지
	rs.close();
	stmt.close();
	con.close();
%>
</body>
</html>