<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Reportes</title>
</head>
<body>
<jsp:include page="Navbar.jsp"/>
    <h2>Generar Reporte de Ingresos y Egresos</h2>
    <form action="ServletReporte" method="post">
        <label for="fechaInicio">Fecha Inicio:</label>
        <input type="date" id="fechaInicio" name="fechaInicio" required>
        
        <label for="fechaFin">Fecha Fin:</label>
        <input type="date" id="fechaFin" name="fechaFin" required>
        
        <button type="submit">Generar Reporte</button>
    </form>


 <jsp:include page="Footer.jsp"/>

</body>


</html>