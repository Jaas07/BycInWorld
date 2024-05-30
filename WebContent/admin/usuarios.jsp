<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="com.bycinworld.utils.*" %>
<%@ page import="java.sql.ResultSet" %>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>BycInWorld - Usuarios</title>
    <link rel="stylesheet" href="styles.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>
<body>
    <header>
        <h1>Usuarios Registrados</h1>
    </header>
    <section>
        <table border="1">
            <thead>
                <tr>
                    <th>Usuario</th>
                    <th>Email</th>
                    <th>Rol</th>
                </tr>
            </thead>
            <tbody>
                <%
                    ResultSet rs = Usuario.obtenerUsuarios();
                    while (rs.next()) {
                %>
                <tr>
                    <td><%= rs.getString("username") %></td>
                    <td><%= rs.getString("email") %></td>
                    <td><%= rs.getString("rol") %></td>
                </tr>
                <%
                    }
                %>
            </tbody>
        </table>
    </section>
</body>
</html>
