<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import = "java.sql.*" %>
<%
  request.setCharacterEncoding("utf-8");
  String uid=request.getParameter("id");
  String ucon=request.getParameter("content");
  
  /* String sql = "insert into feed(id,content) values";
  sql += "('"+uid+"' , '"+ucon+ "')" ; */
  String sql="insert into feed(id, content) values(?,?)";
  
  Class.forName("com.mysql.jdbc.Driver");
  Connection conn = DriverManager.getConnection(
		  "jdbc:mysql://localhost:3306/jsp_a","root","1234");
  //Statement stmt=conn.createStatement();
  PreparedStatement stmt=conn.prepareStatement(sql);
  stmt.setString(1, uid);
  stmt.setString(2, ucon);
    
  //int count=stmt.executeUpdate(sql);
  int count=stmt.executeUpdate();
  
  if (count == 1) {
	  out.println("upload OK.");
  }else {
	  out.println("upload fail.");
  }

%>    



<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>

</body>
</html>