<%-- 
    Document   : jvControlErrores
    Created on : 14/03/2022, 11:40:24 PM
    Author     : aleja
--%>


<%
    String errorVista = (String)request.getSession().getAttribute("errorCode");
    
    String mensaje = "";
    if(errorVista.equals("1")){
        mensaje = "Error en formato de datos (Nombre / Edad). Verifique!";
    }
%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>Algo salio mal!</h1>
        <p><%=mensaje%></p>
    </body>
</html>
