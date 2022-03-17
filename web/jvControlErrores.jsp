<%-- 
    Document   : jvControlErrores
    Created on : 14/03/2022, 11:40:24 PM
    Author     : aleja
--%>


<%
    int errorVista = Integer.parseInt((String)request.getSession().getAttribute("errorCode"));
    
    String mensaje = "";
    switch (errorVista){
        case 1:
            mensaje = "Error en capturar el nombre del usuario. Verifique que el campo nombre no este vacio!";
            break;
        case 2:
            mensaje = "Error en capturar la edad del usuario. Verifique que el campo edad no este vacio!";
            break;
        case 3:
            mensaje = "La edad no se encuentra en un rango de 0 a 99. Verifique la edad!";
            break;
        case 4:
            mensaje = "No has introducido un número para la edad. Verifique!";
            break;
        case 5:
            mensaje = "Error en capturar el email del usuario. Verifique que el campo email no este vacio!";
            break;
        default:
            break;
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
        <a href="jvDatosGenerales.jsp">Regresar a capturar datos...</a>
    </body>
</html>
