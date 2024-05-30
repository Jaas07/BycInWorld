<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, com.bycinworld.utils.*" %>

<%
    String username = request.getParameter("username");
    String email = request.getParameter("email");
    String clave = request.getParameter("clave");
    String rol = request.getParameter("rol");

    Connection con = null;
    PreparedStatement ps = null;
    String mensaje = "";

    try {
        Conexion db = new Conexion();
        con = db.getConexion();
        
        String sql = "INSERT INTO tb_usuarios (username, email, clave, rol) VALUES (?, ?, ?, ?)";
        ps = con.prepareStatement(sql);
        ps.setString(1, username);
        ps.setString(2, email);
        ps.setString(3, clave);
        ps.setString(4, "user");
        
        int result = ps.executeUpdate();
        if (result > 0) {
            mensaje = "Registro exitoso!!. Ahora puede iniciar sesión.";
        } else {
            mensaje = "Error al registrar el usuario!!. Por favor, intente nuevamente.";
        }
    } catch (Exception e) {
        e.printStackTrace();
        mensaje = "Error: " + e.getMessage();
    } finally {
        if (ps != null) try { ps.close(); } catch (SQLException ignore) {}
        if (con != null) try { con.close(); } catch (SQLException ignore) {}
    }
%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>Registro - BycInWorld</title>
    <link rel="stylesheet" href="css/registro.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>
<body>
    <header>
        <h1>Registro</h1>
    </header>
    <br>
    <div class="container">
        <p><%= mensaje %></p>
        <a href="login.jsp" class="btn btn-primary">Iniciar Sesión</a>
    </div>
</body>
</html>
