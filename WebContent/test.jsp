<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8" import="com.bycinworld.utils.*"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
<%
Usuario user1 = new Usuario();
user1.verificarUsuario("admin", "adminpassword");
%>

</body>
</html>