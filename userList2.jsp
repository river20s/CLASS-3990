<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<%@ page import="java.sql.*" %>
<%@ page import="util.*" %>

<%
 //Class.forName("com.mysql.jdbc.Driver");
 //Connection conn =DriverManager.getConnection
 //		 ("jdbc:mysql://localhost:3306/jsp_a","root","1234");
 
 Connection conn=ConnectionPool.get();
 Statement stmt = conn.createStatement();
 ResultSet rs=stmt.executeQuery("select * from user");
 
 String str="<table align=center >";
 str = str+"<tr><th colspan=3>가입자 리스트 </th></tr>";
 while(rs.next()){
	 str += "<tr><td colspan=3><hr></td></tr>";
	 str += "<tr>";
	 str += "<td width=100>" + rs.getString("id") + "</td>";
	 str += "<td width=100>" + rs.getString("name") + "</td>";
	 str += "<td width=200>" + rs.getString("ts") + "</td>";
	 str += "</tr>";
 }
 str += "</table>";
 out.print(str);
 rs.close(); stmt.close(); conn.close();

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