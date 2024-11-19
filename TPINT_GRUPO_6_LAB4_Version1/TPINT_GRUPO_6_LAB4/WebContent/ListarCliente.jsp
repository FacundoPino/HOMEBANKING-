<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@page import="daoImp.BancodaoImp"%>
<%@page import="Entidades.Cliente"%>
<%@page import="java.util.ArrayList"%>
<!DOCTYPE html>
<html>
<head>
   
    <title>Listado de Clientes</title>
    <link rel="stylesheet" type="text/css" href="css/ABMCliente.css">
    <link rel="stylesheet" type="text/css" href="https://cdn.datatables.net/1.10.19/css/jquery.dataTables.css">

    <style>
        /* Estilo para resaltar la fila seleccionada */
        .selected-row {
            background-color: #d3e0ea;
        }
    </style>

    <script src="https://ajax.googleapis.com/ajax/libs/jquery/2.1.4/jquery.min.js"></script>
    <script src="https://cdn.datatables.net/1.10.19/js/jquery.dataTables.js"></script>
    <script>
        $(document).ready(function() {
            $('#clientes_table').DataTable();
          
        });
    </script>

</head>
<body>
<jsp:include page="Navbar.jsp"/>

<div class="encabezado">
    <h1>Listado de Clientes</h1>
</div>

<form method="get" action="#">
    <fieldset>
        <legend>Buscar Cliente</legend>
        <p>
            <label for="buscar">Nombre o DNI:</label>
            <input id="buscar" type="text" name="txtBuscar" placeholder="Ingrese nombre o DNI" required>
            <input type="submit" value="Buscar">
        </p>
    </fieldset>
</form>

<%
    BancodaoImp banco = new BancodaoImp();
    ArrayList<Cliente> lista = banco.ListarCliente();
%>
<table id="clientes_table" class="display">
    <thead>
        <tr>
            <th>ID</th>
            <th>Nombre</th>
            <th>Apellido</th>
            <th>DNI</th>
            <th>CUIL</th>
            <th>Sexo</th>
            <th>Nacionalidad</th>
            <th>Fecha de Nacimiento</th>
            <th>Dirección</th>
            <th>Localidad</th>
            <th>Provincia</th>
            <th>Correo Electrónico</th>
            <th>Teléfono</th>
        </tr>
    </thead>
    <tbody>
        <% if (lista != null) {
                for (Cliente cli : lista) { %>
                    <tr onclick="selectRow(this)">
                        <td><%= cli.getId() %></td>
                        <td><%= cli.getNombre() %></td>
                        <td><%= cli.getApellido() %></td>
                        <td><%= cli.getDni() %></td>
                        <td><%= cli.getCuil() %></td>
                        <td><%= cli.getSexo() %></td>
                        <td><%= cli.getNacionalidad() %></td>
                        <td><%= cli.getFechaNacimiento() %></td>
                        <td><%= cli.getDireccion() %></td>
                        <td><%= cli.getLocalidad() %></td>
                        <td><%= cli.getProvincia() %></td>
                        <td><%= cli.getCorreoElectronico() %></td>
                        <td><%= cli.getTelefono() %></td>
                    </tr>
                <% }
            } else { %>
                <tr>
                    <td colspan="13">No se encontraron clientes :(</td>
                </tr>
        <% } %>
    </tbody>
</table>

<div>
    <button type="button" class="button button-blue" onclick="modificarCliente()">Modificar Cliente</button>
    <button type="button" class="button button-red" onclick="eliminarCliente()">Eliminar Cliente</button>
</div>

<script>
    let selectedRow = null;
    let selectedId = null;

    function selectRow(row) {
        if (selectedRow) {
            selectedRow.classList.remove("selected-row");
        }
        row.classList.add("selected-row");
        selectedRow = row;
        selectedId = row.cells[0].innerText;
        console.log("ID seleccionado:", selectedId);
    }

    function modificarCliente() {
        if (selectedId) {
            window.location.href = 'ModificarCliente.jsp?id=' + selectedId;
        } else {
            alert("Por favor, selecciona una fila primero.");
        }
    }

    function eliminarCliente() {
        if (selectedId) {
            let confirmDelete = confirm("¿Estás seguro de que quieres eliminar este cliente?");
            if (confirmDelete) {
                window.location.href = 'ServletBanco?idCliente=' + selectedId;
            }
        } else {
            alert("Por favor, selecciona una fila primero.");
        }
    }
</script>

</body>
</html>
