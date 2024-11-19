<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<style type="text/css">
	<jsp:include page="css/recuperarPassword.css"></jsp:include>
</style>
<title>Recuperar contraseña</title>
</head>
<body>
<jsp:include page="Navbar.jsp"/>

	

</div>

    
<div class="form-register">
    <form method="get" action="ServletBanco">
      <h2>¡Hola! ¿quieres recuperar la contraseña?</h2>
      <p class="subtitulo">Complete con un mail o usuario.</p>
      
      <fieldset>
      	<div class="mb-3">
        <label for="">Usuario o Mail:</label>
        <input type="text" id="validarusuario" class = "controls" required name="txtvalidar"><br><br>
        <br>

        <input type="submit" class="btnCambiar" value="Cambiar">
        </div>
      </fieldset>
    </form>
</div>

 <jsp:include page="Footer.jsp"/>

</body>

</html>