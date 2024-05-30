<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="ISO-8859-1" session="true" 
import="com.bycinworld.utils.*" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Inicio de Sesión</title>
</head>
<body>
<%
Usuario usuario = new Usuario();
String nlogin = request.getParameter("username");
String nclave = request.getParameter("clave");
HttpSession sesion = request.getSession(); // Se crea la variable de sesión
boolean respuesta = usuario.verificarUsuario(nlogin, nclave);

if (respuesta) {
    sesion.setAttribute("usuario", usuario.getUsername());
    String role = usuario.getRole(); //getRole() que nos devuelve el rol del usuario

    if ("admin".equals(role)) {
        response.sendRedirect("index.jsp"); // Redirige a la página del administrador
    } else if ("user".equals(role)) {
        response.sendRedirect("tips.jsp"); // Redirige a la página del usuario
    } else {
        response.sendRedirect("login.jsp?error=Rol no reconocido");
    }
} else {
%>
    <jsp:forward page="login.jsp">
        <jsp:param name="error" value="Datos incorrectos. ¡Vuelva a intentarlo!"/>
    </jsp:forward>
<%
}
%>
</body>
</html>
