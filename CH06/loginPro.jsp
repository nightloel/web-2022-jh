<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"
    import = "java.sql.*"%>
    <%
    request.setCharacterEncoding("utf-8");
    String id = request.getParameter("id");
    String passwd = request.getParameter("pwd");
    //1. jdbc 드라이버 로드
    Class.forName("org.mariadb.jdbc.Driver");
    //2. 커넥션 얻기
    String url = "jdbc:mariadb://localhost:3306/jinhwandb";
	String user = "jinhwan";
	String pwd = "1111";
	Connection con = DriverManager.getConnection(url,user,pwd);
    //3. SQL실행
    //String sql = "insert into login(id,pwd)values('" + id + "','" + passwd + "')";
    //Statement stmt = con.createStatement();
    String sql = "insert into login(id,pwd) values(?, ?)";
    //4. SQL실행
    PreparedStatement pstmt = con.prepareStatement(sql);
    pstmt.setString(1, id);
    pstmt.setString(2, passwd);
    pstmt.executeUpdate();
    //int i = stmt.executeUpdate(sql);
    //5. 객체해제
    pstmt.close();
    con.close();
    
    response.sendRedirect("dbcon-login.jsp");
    %>