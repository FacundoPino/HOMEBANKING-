<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
    <style>
        .button {
            color: white;
            padding: 10px 20px;
            border-radius: 5px;
            border: none;
            cursor: pointer;
            font-size: 16px;
            margin-top: 10px;
        }

        .button-blue {
            background-color: #007bff;
        }

        .button-red {
            background-color: #dc3545;
        }
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

    <table border="1">
        <tr>
            <th style="width: 52px;">Cliente</th> 
            <th style="width: 238px;">Fecha</th> 
            <th style="width: 69px;">Tipo de cuenta</th> 
            <th style="width: 74px;">Numero de cuenta</th> 
            <th style="width: 84px;">CBU</th>
            <th style="width: 84px;">Saldo</th> 
        </tr>
        <tr> 
        </tr>
    </table>
    
    <div>
    
<button id="btnAgregar" type="submit" class="button button-blue" onclick="window.location.href='AltaCuentas.jsp'" >Agregar Cuenta</button>
<button id="btnModificar" type="submit" class="button button-blue" onclick="window.location.href='ModificarCuentas.jsp'" >Modificar Cuenta</button>
<button id="btnEliminar" type="submit" class="button button-red">Eliminar</button>
    </div>
    
 <jsp:include page="Footer.jsp"/>

</body>

</html>

