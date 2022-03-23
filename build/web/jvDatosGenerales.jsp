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
    <style>
        :root{
            --softGrey: #94a3b7;
            --lineGrey: #b9c1ca;
            --primaryFont: 'Source Sans Pro', sans-serif;
        }

        *{
            box-sizing: border-box;
            margin: 0;
            padding: 0;
        }
        
        html{
            font-size: 62.5%;
            font-family: var(--primaryFont);
        }
        
        li{
            list-style: none;
        }

        a{
            text-decoration: none;
        }
        
        body{
            height: 100vh;
            width: 100vw;
            display: grid;
        }
        
        /* User control */
        main{
            width: 60%;
            margin: 0 auto;
            background-color: var(--lineGrey); 
            border-radius: 10px;
            display: grid;
            place-self: center;
            height: 230px;
        }
        .user-control__title{
            font-size: 2.8rem;
            color: blue;
        }
    </style>
    <body>
        <main class="user-control">
            <h1 class="user-control__title">Control de Usuarios</h1>
        
            <form class="user-control__form" id="frmCaptura" method="post" action="srvControlador">
                <label>Nombre:</label>
                <input type="text" id="txtNombre" name="txtNombre" placeholder="Captura tu nombre...">
                
                <label>Edad:</label>
                <input type="number" id="txtEdad" name="txtEdad" placeholder="Captura tu edad...">
                
                <label>Email:</label>
                <input type="email" id="txtCorreo" name="txtEmail" placeholder="Captura tu correo...">
                
                <input type="submit" id="btnAceptar" name="btnAceptar" value="Aceptar">
                <!-- 
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
                           <input type="number" id="txtEdad" name="txtEdad" placeholder="Captura tu edad...">
                       </td>
                   </tr>
                   <tr>
                       <td>Email:</td>
                       <td>
                           <input type="email" id="txtCorreo" name="txtEmail" placeholder="Captura tu correo...">
                       </td>
                   </tr>
                   <tr>
                       <td colspan="2">
                           <input type="submit" id="btnAceptar" name="btnAceptar" value="Aceptar">
                       </td>
                   </tr>
                </table>
                -->
            </form>
        </main>
    </body>
</html>
