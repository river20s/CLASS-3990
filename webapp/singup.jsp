<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
 <form action="singup_pro_dao.jsp" method="post">
   <table align=center width=400>
     <tr><td colspan=2 height=40 align=center> 회원가입 </td></tr>
     <tr>
         <td>아이디 : </td>
         <td><input type="text" placeholder="email" name="id"></td>
     </tr>
     <tr>
     	<td>패스워드 :   </td>
     	<td><input type="password" name="ps"></td>
     </tr>
     <tr>
     	<td>패스워드(확인):   </td>
     	<td><input type="password" name="ps2"></td>
     </tr>
     <tr>
        <td>이름 : </td>
        <td><input type="text" name="name"></td>
     </tr>
     <tr>
     	<td colspan=2 align=center height=50>
     	<input type="submit" value="회원가입"> 
     </tr>  
   </table> 
 </form>
 </body>
</html>