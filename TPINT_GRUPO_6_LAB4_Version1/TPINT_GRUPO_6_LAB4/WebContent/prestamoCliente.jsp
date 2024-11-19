<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Solicitud de Prestamo</title>
<link rel="stylesheet" type="text/css" href="css/prestamo.css">
</head>
<body>
<div class="navegador">
<jsp:include page="Navbar.jsp"/>
</div>

	<div class="container" >
		<h2> Solicitud de prestamos </h2>
		<form method="post" action="ServletBanco" >
			<label for="monto">Monto del Préstamo:</label>
			<input type="number" id="monto" name= "monto" placeholder="Ingrese el monto" required>
			<br>
			
			<label for="cuotas">Cantidad de Cuotas:</label>
			<select id="cuotas" name="cuotas" required>
            <option value="">Seleccione...</option>
            <option value="6">6 cuotas</option>
            <option value="12">12 cuotas</option>
            <option value="24">24 cuotas</option>
            <option value="36">36 cuotas</option>
        	</select>
        	
        	<label for="cuenta">Cuenta de Depósito:</label>
	        <select id="cuenta" name="cuenta" required>
	            <option value="">Seleccione...</option>
	            <option value="caja-ahorro">Caja de Ahorro</option>
	            <option value="cuenta-corriente">Cuenta Corriente</option>
	        </select>
	        
	        <button type="submit" class="btn-pedir" >Solicitar Préstamo</button>
		
		</form>
	
	</div>
	

</body>
 <jsp:include page="Footer.jsp"/>

</html>