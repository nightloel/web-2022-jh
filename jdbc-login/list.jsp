<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import="java.sql.*" %><!--이것을 import해야 Connection을 쓸수있음 -->
<%
    	//1. jdbc driver 등록
	Class.forName("org.mariadb.jdbc.Driver");
	//2. db 와 연결(Connection) 생성
	String url = "jdbc:mariadb://localhost:3306/jinhwandb";
	String user = "jinhwan";
	String passwd = "1111";
	Connection con = DriverManager.getConnection(url,user,passwd);
	//3. DB 연동
	String sql = "select id, name, pwd from login";//
	Statement stmt = con.createStatement();//stmt로 확인하고
	ResultSet rs = stmt.executeQuery(sql);//stmt로 실행 updatePro엔 없는 ResultSet과 executeQuery가있는이유=DB에서 데이터결과를받기위해선excuteQuery를사용
	//4. 결과 셋에서 데이터 추출하기
	String id ="";
	String name ="";
	String pwd ="";
	%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
 <meta name="viewport" content="width=device-width, initial-scale=1">
  <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/css/bootstrap.min.css">
  <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.0/dist/jquery.slim.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.1/dist/js/bootstrap.bundle.min.js"></script>
<title>DB 연결</title>
</head>
<body>
<h2>사용자 목록</h2>
<table class="table table-striped">
<tr>
<th>id</th>
<th>name</th>
<th>pwd</th>
</tr>
<tr>
<%
	while(rs.next()){
		id = rs.getString("id");
		name = rs.getString("name");
		pwd = rs.getString("pwd");
	%>
	<td><a href="updateForm.jsp?id=<%=id %>"><%=id %></a></td>
	<td><%=name %></td>
	<td><%=pwd %></td>
	</tr>
	<% }
	//5. DB 연결 해지
	stmt.close();
	con.close();
%>
</body>
</html>