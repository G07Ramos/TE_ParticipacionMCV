<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Tutorial 6 (E1)</title>
    </head>
    <body>
        <h1>Datos Personales</h1>
        <form action="Controlador6_E1" method="post">
            <table>
                <tr>
                    <td>Nombre:</td>
                    <td><input type="text" name="nombre" value=""/></td>
                </tr>
                <tr>
                    <td>Sexo:</td>
                </tr>
                <tr>
                    <td>Femenino</td>
                    <td><input type="radio" name="sexo" value="Femenino"/></td>
                </tr>
                <tr>
                    <td>Masculino</td>
                    <td><input type="radio" name="sexo" value="Masculino"/></td>
                </tr>
                <tr>
                    <td>Telefono</td>
                    <td><input type="text" name="telefono" value=""/></td>
                </tr>
                <tr>
                    <td>Correo</td>
                    <td><input type="text" name="correo"/></td>
                </tr>
                <tr>
                    <td></td>
                    <td><input type="submit" value="Enviar"/></td>
                </tr>
            </table>
        </form>
    </body>
</html>
