<%@page import="com.emergentes.modelo.Nota"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<%
   Nota item = (Nota) request.getAttribute("act");
    boolean nuevo = true;
    if (item.getId() > 0) {
        nuevo = false;
    }
%><!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Agenda personal</title>
    </head>
    <body>
        <h1>Agenda personal</h1>
        <form action="Controlador_8" method="post">
            <table>
                <tr>
                    <td>ID:</td>
                    <td><input type="text" name="id" value="<%= item.getId() %>"></td>
                </tr>
                <tr>
                    <td>Hora:</td>
                    <td><input type="text" name="hora" value="<%= item.getHora() %>"></td>
                </tr>
                <tr>
                    <td>Actividad:</td>
                    <td><input type="text" name="actividad" value="<%= item.getActividad() %>"></td>
                </tr>
                <tr>
                    <td>Cumplido:</td>
                    <td><input type="text" name="estado" value="<%= item.getEstado() %>"></td>
                </tr>
                <tr>
                    <input type="hidden" name="nuevo" value="<%= nuevo %>">
                           <td></td>
                    <td><input type="submit" value="Procesar"></td>
                </tr>
            </table>
        </form>
    </body>
</html>
