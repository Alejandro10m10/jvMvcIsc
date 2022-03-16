<%-- 
    Document   : jvDatosGenerales
    Created on : 14/03/2022, 11:34:40 PM
    Author     : aleja
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Control de Usuarios</h1>
        
        <form id="frmCaptura" method="post" action="srvControlador">
            <table>
                <tr>
                    <td>Nombre:</td>
                    <td>
                       <input type="text" id="txtNombre" name="txtNombre" placeholder="Captura tu nombre...">
                    </td>
                </tr>
                <tr>
                   <td>Edad:</td>
                   <td>
                       <input type="text" id="txtEdad" name="txtEdad" placeholder="Captura tu edad...">
                   </td>
               </tr>
               <tr>
                   <td colspan="2">
                       <input type="submit" id="btnAceptar" name="btnAceptar" value="Aceptar">
                   </td>
               </tr>
            </table>
        </form>
    </body>
</html>
