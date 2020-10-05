<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tutorial 6 (E2)</title>
    </head>
    <body>
        <h1>Datos del Producto</h1>
        <form action="Controlador6_E2" method="post">
            <table>
                <tr>
                    <td>id:</td>
                    <td><input type="text" name="id" /></td>
                </tr>
                <tr>
                    <td>Descripcion:</td>
                    <td><input type="text" name="descripcion" /></td>
                </tr>
                <tr>
                    <td>Categoria: </td>
                    <td><input type="text" name="categoria"/></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="Enviar"/></td>
                </tr>
            </table>
        </form>
    </body>
</html>
