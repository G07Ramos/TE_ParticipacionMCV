<%@page import="com.emergentes.modelo.Persona"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    Persona per = (Persona) request.getAttribute("datos");
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tutorial 6 (E1)</title>
    </head>
    <body>
        <h1>Datos Personales</h1>
        <p>Gracias por llenar el formulario</p>
        <p>Los Datos ingresados son:</p>
        <p>Su nombre es: <%= per.getNombre() %></p>
        <p>Usted es de sexo : <%= per.getSexo() %></p>
        <p>Su telefono es: <%= per.getTelefono() %></p>
        <p>Su correo es: <%= per.getCorreo() %></p>
    </body>
</html>
