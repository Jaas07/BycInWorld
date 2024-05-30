<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<link rel="stylesheet" href="login.css">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
<title>Log In</title>
</head>
<body>
 <header>
        <h1>Iniciar Sesión</h1>
    </header>
<div class="login-container">
    <form action="verificarLogin.jsp" method="post">
        <div class="form-group">
            <label for="username">Usuario</label>
            <input type="text" id="username" name="username" required>
        </div>
        <div class="form-group">
            <label for="password">Contraseña</label>
            <input type="password" id="clave" name="clave" required>
        </div>

        <button type="submit" class="btn-login">Aceptar</button>
        <div class="register-link">
            <p>¿No tienes una cuenta? <a href="registro.jsp">Regístrate aquí</a></p>
        </div>
    </form>
    <%
    if (request.getParameter("error") != null) {
%>
    <p style="color: red;"><%= request.getParameter("error") %></p>
<%
    }
%>
</div>
</body>
</html>
