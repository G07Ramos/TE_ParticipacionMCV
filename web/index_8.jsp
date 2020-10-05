<%@page import="com.emergentes.modelo.Nota"%>
<%@page import="java.util.ArrayList"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    if (session.getAttribute("listact") == null) {
        ArrayList<Nota> listaux = new ArrayList<Nota>();
        session.setAttribute("listact", listaux);
    }
    ArrayList<Nota> lista = (ArrayList<Nota>) session.getAttribute("listact");
%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tutorial_8</title>
    </head>
    <body>
        <h1>Agenda personal</h1>
        <a href="Controlador_8?op=1">Nuevo</a>
        <table border="1">
            <tr>
                <th>Id</th>
                <th>Hora</th>
                <th>Actividad</th>
                <th>Cumplimiento</th>
            </tr>
            <%
                if(lista != null){
                    for(Nota item: lista){
            %>
            <tr>
                <td><%= item.getId()%></td>
                <td><%= item.getHora()%></td>
                <td><%= item.getActividad()%></td>
                <td><%= item.getEstado()%></td>
                <td><a href="Controlador_8?op=2&id=<%= item.getId() %>">Editar</a></td>
                <td><a href="Controlador_8?op=3&id=<%= item.getId() %>"
                       onclick="return confirm('Esta seguro que desea eliminar la actividad?')">Eliminar</a></td> 
            </tr>
            <%
                    }
                }      
            %>
        </table>
    </body>
</html>
