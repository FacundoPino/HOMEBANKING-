<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <title>Préstamos Aprobados</title>
    <link rel="stylesheet" type="text/css" href="css/AMPrestamos.css">
</head>
<body>
<jsp:include page="Navbar.jsp"/>
<div class="encabezado">
    <h1>Préstamos Aprobados</h1>
</div>

<table border="1">
    <thead>
        <tr>
            <th>ID Préstamo</th>
            <th>Nombre del Cliente</th>
            <th>Documento</th>
            <th>Monto Aprobado</th>
            <th>Cuotas</th>
            <th>Estado</th>
        </tr>
    </thead>
    <tbody>
     <tr>
            <td colspan="8">No se encontraron clientes.</td>
        </tr>
    
    </tbody>
</table>

 <jsp:include page="Footer.jsp"/>

</body>

</html>
