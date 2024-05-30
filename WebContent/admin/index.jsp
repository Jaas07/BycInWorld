<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.bycinworld.models.Tip" %>
<%@ page import="java.sql.ResultSet" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>BycInWorld - Tips</title>
    <link rel="stylesheet" href="styles.css">
     <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>
<body>
    <header>
        <h1>Tips para ir en bici al trabajo</h1>
        <nav>
            <ul>
            	<jsp:include page="header.jsp"/>
                <li><a href="usuarios.jsp">Ver Usuarios Registrados</a></li>
            </ul>
        </nav>
    </header>
    <div class="mantenimiento">
    	<h3><a href="lugaresMantenimiento.jsp">Lugares de Mantenimiento</a></h3>
    </div>
    <section>
        <ul>
            <%
                ResultSet rs = Tip.obtenerTips();
                while (rs.next()) {
            %>
            <li><%= rs.getString("contenido") %></li>
            <%
                }
            %>
        </ul>
    </section>
</body>
</html>
