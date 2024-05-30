<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
    <meta charset="UTF-8">
    <title>BycInWorld - Home</title>
    <link rel="stylesheet" href="css/styles.css">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-QWTKZyjpPEjISv5WaRU9OFeRpok6YctnYmDr5pNlyT2bRjXh0JMhjY6hW+ALEwIH" crossorigin="anonymous">
</head>
<body>
    <header>
        <h1>Bienvenido a BycInWorld</h1>
        <nav>
            <ul>
                <jsp:include page="header.jsp"/>
            </ul>
        </nav>
    </header>
    <section>
        <h2>Tu plataforma para ir en bici al trabajo</h2>
        <p>Comparte tips y encuentra lugares de mantenimiento para tu bicicleta.</p>
    </section>
    <div class="container">
    	 <img alt="" src="images/inicio.jpg" height="420">
    </div> 
    <footer>
        <a href="https://github.com/Jaas07?tab=projects/"><h3>Autor: Johan Albiño(github)</h3></a>
        <h4>Copyright-2024</h4>
          <p>
    <a href="http://jigsaw.w3.org/css-validator/check/referer">
        <img style="border:0;width:80px;height:25px"
            src="http://jigsaw.w3.org/css-validator/images/vcss"
            alt="¡CSS Válido!" />
    </a>
	</p>  
    </footer>
</body>
</html>
