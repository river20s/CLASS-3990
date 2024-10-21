<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import = "java.sql.*" %>
<%@ page import = "dao.UserDAO" %>
<%
  request.setCharacterEncoding("utf-8");
  String uid=request.getParameter("id");
  String upass=request.getParameter("ps");
  String uname=request.getParameter("name");
  // 기존에 작성한 코드를 DAO로 이관한다.
  UserDAO dao = new UserDAO();
  
  if(dao.exists(uid)) {
	  out.println("이미 가입된 회원입니다.");
	  return;
  }
  
  if (dao.insert(uid, upass, uname)) {
	  out.println("회원가입이 완료되었습니다.");
  }
  
%>    

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

</body>
</html>