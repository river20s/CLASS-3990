<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="java.sql.*" %>
<%@ page import="dao.*" %>
<%

String uid = request.getParameter("id");
UserDAO dao = new UserDAO();
boolean isDeleted = dao.delete(uid); // delete 결과를 변수에 저장

if (!isDeleted) {
    out.println("회원 정보가 없습니다.");
} else {
    out.println("탈퇴했습니다.");
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