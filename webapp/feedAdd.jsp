<%@ page language="java" contentType="text/html; charset=EUC-KR"
    pageEncoding="EUC-KR"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="EUC-KR">
<title>Insert title here</title>
</head>
<body>
  <form action="feedAdd_pro.jsp" method="post">
 	<table align=center>
 		<tr><td colspan=2 height=40> ���ۼ� </td></tr>
 		<tr>
 			<td>���̵� : </td>
 			<td><input type="text" name="id"></td>
 		</tr>
 		<tr>
 			<td>�ۼ��� : </td>
 			<td><textarea name="content" rows=5 cols=20></textarea></td>
 		</tr>
 	    <tr>
 	    	<td colspan=2 height=50>
 	    	  <input type="submit" value="���ε��ϱ�">
 	    	</td>
 	    </tr>
 	
 	</table>  
  </form>
 </body>
</html>