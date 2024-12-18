<%@ page language="java" contentType="text/html; charset=ISO-8859-1" pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
    <link rel="stylesheet" type="text/css" href="css/altclien.css">
    <title>Alta de Cliente</title>
</head>
<body>
<jsp:include page="Navbar.jsp"/>

  <div class="form-register">
        <h4>Alta de Cliente</h4>

        <!-- Mensaje de error -->
        <c:if test="${not empty mensajeError}">
            <div style="color: red; font-weight: bold;">
                ${mensajeError}
            </div>
        </c:if>

        <!-- Formulario para registrar cliente -->
        <form method="post" action="ServletBanco">
            <fieldset>
                <legend>Datos del Cliente</legend>

                <p>
                    <label class="form-label" for="nombre">Nombre</label>
                    <input class="controls" id="nombre" type="text" placeholder="Ingrese el nombre" required name="txtNombre">
                    
                </p>
                <p>
                    <label class="form-label" for="apellido">Apellido</label>
                    <input class="controls" id="apellido" type="text" placeholder="Ingrese el apellido" required name="txtApellido">
                </p>
                <p>
                    <label class="form-label" for="dni">DNI</label>
                    <input class="controls" id="dni" type="number" placeholder="Ingrese el DNI" required name="txtDNI">
                </p>
                <p>
                    <label class="form-label" for="cuil">CUIL</label>
                    <input class="controls" id="cuil" type="number" placeholder="Ingrese el CUIL" required name="txtCUIL">
                </p>
                <p>
                    <label class="form-label" for="sexo">Sexo</label>
                    <select class="controls" id="sexo" required name="txtSexo">
                        <option value="">Seleccione</option>
                        <option value="Masculino">Masculino</option>
                        <option value="Femenino">Femenino</option>
                        <option value="Otro">Otro</option>
                    </select>
                </p>
                <p>
                    <label class="form-label" for="nacionalidad">Nacionalidad</label>
                    <select class="controls" id="nacionalidad" required name="txtNacionalidad">
                        <option value="">Seleccione</option>
                        <option value="1">Argentina</option>
                        <option value="2">Brasil</option>
                        <option value="3">Chile</option>
                        <option value="4">Uruguay</option>
                        <option value="5">Paraguay</option>
                    </select>
                </p>
                <p>
                    <label class="form-label" for="fechaNacimiento">Fecha de Nacimiento</label>
                    <input class="controls" id="fechaNacimiento" type="date" required name="txtFechaNacimiento">
                </p>
                <p>
                    <label class="form-label" for="direccion">Direcci�n</label>
                    <input class="controls" id="direccion" type="text" placeholder="Ingrese la direcci�n" required name="txtDireccion">
                </p>
                <p>
                    <label class="form-label" for="localidad">Localidad</label>
                    <input class="controls" id="localidad" type="text" placeholder="Ingrese la localidad" required name="txtLocalidad">
                </p>
                <p>
                    <label class="form-label" for="provincia">Provincia</label>
                    <input class="controls" id="provincia" type="text" placeholder="Ingrese la provincia" required name="txtProvincia">
                </p>
                <p>
                    <label class="form-label" for="email">Correo Electr�nico</label>
                    <input class="controls" id="email" type="email" placeholder="Ingrese el correo electr�nico" required name="txtEmail">
                </p>
                <p>
                    <label class="form-label" for="telefono">Tel�fono</label>
                    <input class="controls" id="telefono" type="text" placeholder="Ingrese el tel�fono" required name="txtTelefono">
                </p>
                <p>
                    <label class="form-label" for="usuario">Usuario</label>
                    <input class="controls" id="usuario" type="text" placeholder="Ingrese el nombre de usuario" required name="txtUsuario">
                </p>
                <p>
                    <label class="form-label" for="contrasena">Contrase�a</label>
                    <input class="controls" id="contrasena" type="password" placeholder="Ingrese la contrase�a" required name="txtContrasena1">
                </p>
                <p>
                    <label class="form-label" for="contrasena2">Confirmar Contrase�a</label>
                    <input class="controls" id="contrasena2" type="password" placeholder="Confirme la contrase�a" required name="txtContrasena2">
                </p>
                 <input type="hidden" name="action" value="ValidarContrase�as">
				<p>
				    <label class="form-label" for="TipoUsuario">Tipo Usuario</label>
				    <select class="controls" id="TipoUsu" required name="txtTipoUsuario">
				        <option value="">Seleccione</option>
				        <option value="1">Admin</option>
				        <option value="0">Cliente</option>
				    </select>
				</p>

                <!-- indica la acci�n -->
                <input type="hidden" name="action" value="ValidarContrase�as">

            </fieldset>
            <p>
                <input class="botons" id="btnAceptar" type="submit" value="Aceptar" required name="btnAltaCliente">
            </p>
        </form>
    </div>

    <jsp:include page="Footer.jsp"/>
</body>
</html>
