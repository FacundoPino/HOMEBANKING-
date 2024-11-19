<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<style>

	<jsp:include page="css/Cliente.css"></jsp:include>
	
	        .footer {
		    background-color: #408080;
		    color: #fff;
		    text-align: center;
		    padding: 10px;
		    position: fixed;
		    bottom: 0;
		    width: 100%;
		    font-size: 0.9em;
		    border-radius: 0px 0px 10px 10px; 
		}
</style>

</head>
<body>
<jsp:include page="Navbar.jsp"/>

<div class="encabezado">
	

</div>


<h1>INFORMACION DEL USUARIO</h1>
<form method="get" action="ServletHTML">

    <fieldset>
      <legend>Informacion personal</legend>
      <p>
        <label for="nombres" style="font-weight: bold">Nombre: </label>
        <label for="lblNombre">Andres</label>
      </p>
      <p>
        <label for="apellido" style="font-weight: bold">Apellido: </label>
        <label for="lblApellido">Cuccitini</label>
      </p>
      <p>
        <label for="DNI" style="font-weight: bold">DNI: </label>
        <label for="lblDni">18.12.22</label>
      </p>
      <p>
        <label for="CUIL" style="font-weight: bold">CUIL: </label>
        <label for="lblCUIL">12345678</label>
      </p>
      <p>
        <label for="Sexo" style="font-weight: bold">Sexo: </label>
        <label for="lblSexo">Masculino</label>
      </p>
      <p>
        <label for="Nacionalidad" style="font-weight: bold">Nacionalidad: </label>
        <label for="lblNacionalidad">Argento</label>
      </p>
      
	  <p>
    	<label for="Fecha" style="font-weight: bold">Fecha de nacimiento: </label>
	    <label for="lblFecha">09/12/18</label>
  	  </p>
  	  <p>
        <label for="Direccion" style="font-weight: bold">Direccion: </label>
        <label for="lblDireccion">El Obelisco 123</label>
      </p>
      <p>
        <label for="Localidad" style="font-weight: bold">Localidad: </label>
        <label for="lblLocalidad">La plata</label>
      </p>
      <p>
        <label for="Provincia" style="font-weight: bold">Provincia: </label>
        <label for="lblProvincia">Buenos Aires</label>
      </p>
      <p>
        <label for="Correo" style="font-weight: bold">Correo: </label>
        <label for="lblCorreo">graciasdibu@gmail.com</label>
      </p>
      <p>
        <label for="Telefono" style="font-weight: bold">Telefono: </label>
        <label for="lblTelefono">11223344</label>
      </p>
            
    </fieldset>
</form>

 <jsp:include page="Footer.jsp"/>

</body>

</html>