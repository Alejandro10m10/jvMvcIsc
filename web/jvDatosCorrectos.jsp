<%-- 
    Document   : jvDatosCorrectos
    Created on : 14/03/2022, 11:41:19 PM
    Author     : aleja
--%>

<%@page import="modelo.clsUsuario"%>

<%
    clsUsuario personaVista = (clsUsuario)request.getSession().getAttribute("datosPersona");
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Datos Correctos!</h1>
        <p>Nombre: <span><%=personaVista.getNombre()%></span> </p>
        <p>Edad: <span><%=personaVista.getEdad()%></span> </p>
        <p>Correo: <span><%=personaVista.getEmail()%></span> </p>
        <a href="jvDatosGenerales.jsp">Regresar a capturar datos...</a>
    </body>
</html>
