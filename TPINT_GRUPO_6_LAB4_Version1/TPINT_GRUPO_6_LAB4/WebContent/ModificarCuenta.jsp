<%@ page import="daoImp.CuentaDaoImpl" %>
<%@ page import="Entidades.Cuenta" %>
<%@ page import="dao.CuentaDao" %>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1" %>

<%
	String idCuentaParam = request.getParameter("idCuenta");
    int idCuenta = 0;

    if (idCuentaParam != null && !idCuentaParam.isEmpty()) {
        try {
            idCuenta = Integer.parseInt(idCuentaParam); 
        } catch (NumberFormatException e) {
            e.printStackTrace();     
        }
    }
    CuentaDao cuentadao = new CuentaDaoImpl();
    Cuenta cuenta = cuentadao.obtenerCuentaPorId(idCuenta);
%>

<!DOCTYPE html>
<html>
<head>
    <meta charset="ISO-8859-1">
    <title>Modificar Cuenta</title>
    <link rel="stylesheet" type="text/css" href="css/Cliente.css">
</head>
<body>

    <!-- Incluir la barra de navegación -->
    <jsp:include page="Navbar.jsp"/>

    <div class="container">
        <h1>Modificar Cuenta</h1>

        <% if (cuenta != null) { %>
            <!-- Formulario para modificar la cuenta -->
            <form method="post" action="ServletCuenta">
                <input type="hidden" name="txtIdCuenta" value="<%= cuenta.getId() %>" />

               
                <table>
                    <tr>
                        <td><label for="txtTipoCuenta">Tipo de Cuenta:</label></td>
                        <td><input type="number" name="txtTipoCuenta" value="<%= cuenta.getTipoCuenta() %>" required /></td>
                    </tr>
                    <tr>
                        <td><label for="txtNumeroCuenta">Número de Cuenta:</label></td>
                        <td><input type="number" name="txtNumeroCuenta" value="<%= cuenta.getNumeroCuenta() %>" required /></td>
                    </tr>
                    <tr>
                        <td><label for="txtCBU">CBU:</label></td>
                        <td><input type="number" name="txtCBU" value="<%= cuenta.getCbu() %>" required /></td>
                    </tr>
                    <tr>
                        <td><label for="txtSaldo">Saldo:</label></td>
                        <td><input type="number" name="txtSaldo" value="<%= cuenta.getSaldo() %>" required /></td>
                    </tr>
                </table>

               
                <button type="submit" name="btnModificarCuenta">Modificar Cuenta</button>
                
                <button type="button" onclick="window.location.href='ListarCuenta.jsp'">Cancelar</button>
            </form>
        <% } else { %>
            <p>La cuenta no existe o no se pudo encontrar.</p>
        <% } %>
    </div>

    
    <jsp:include page="Footer.jsp"/>

</body>
</html>
