<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<style>
    <jsp:include page="css/Cliente.css"/>
</style>
</head>
<body>
<jsp:include page="Navbar.jsp"/>
<h1>Alta de Cuenta</h1>
<form method="post" action="ServletCuenta">
    <fieldset>
        <legend>Alta de Cuenta</legend>
         <p><label for="txtIdCliente">Id Cliente</label><input type="text" name="txtIdCliente" required></p>
        <p><label for="txtTipoCuenta">Tipo de cuenta:</label>
            <select name="txtTipoCuenta">
                <option value="1">Caja de ahorro</option>
                <option value="2">Cuenta corriente</option>
            </select>
        </p>
         
        
        <p><label for="txtSaldo">Saldo</label>: <span id="txtSaldo">$ 10.000</span></p>
         <p><input type="submit" value="Aceptar" name="btnAltaCuenta"></p>
    </fieldset>
</form>
<jsp:include page="Footer.jsp"/>
</body>
</html>
