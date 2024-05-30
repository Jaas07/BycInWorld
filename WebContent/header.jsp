<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="javax.servlet.http.*, javax.servlet.*" %>
<%
    session = request.getSession(false);
    boolean isLoggedIn = (session != null && session.getAttribute("usuario") != null);
%>
<nav>
    <ul>
        <li><a href="home.jsp">Home</a></li>
        <li><a href="about.jsp">About Us</a></li>
        <li><a href="registro.jsp">Registrarse</a></li>
        <% if (isLoggedIn) { %>
            <li style="float:right"><a href="cerrarSesion.jsp">Cerrar Sesión</a></li>
        <% } else { %>
            <li style="float:right"><a href="login.jsp">Iniciar Sesión</a></li>
        <% } %>
    </ul>
</nav>
