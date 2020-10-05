<%@page import="com.emergentes.modelo.Producto"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    Producto prod = (Producto) request.getAttribute("producto");
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tutorial 6 (E2)</title>
    </head>
    <body>
        <h1>Datos del Producto</h1>
        <p>Los Datos del producto son:</p>
        <p>Id del producto: <%= prod.getId() %></p>
        <p>Descripcion: <%= prod.getDescripcion() %></p>
        <p>Categoria: <%= prod.getCategoria() %></p>
    </body>
</html>
