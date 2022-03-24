<%-- 
    Document   : jvDatosGenerales
    Created on : 14/03/2022, 11:34:40 PM
    Author     : aleja
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta http-equiv="X-UA-Compatible" content="IE=edge">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>Control de Usuario</title>

    <!-- CSS -->
    <link rel="stylesheet" href="../assets/css/main.css">

    <!-- Fonts -->
    <link rel="preconnect" href="https://fonts.googleapis.com">
    <link rel="preconnect" href="https://fonts.gstatic.com" crossorigin>
    <link href="https://fonts.googleapis.com/css2?family=Courgette&family=Inter:wght@300;400;700&display=swap" rel="stylesheet">
</head>
<body>
    <main class="user-control">
        <section class="user_control__sign-up">
            <h1 class="user-control__header">Control de Usuarios</h1>
            <h2 class="user-control__subtitle">Regístrate para ver el panel <br> de control de usuarios</h2>
            <span class="line"></span>
            <form class="user-control__form" id="frmCaptura" method="post" action="srvControlador">
                <label for="txtNombre">Nombre:</label>
                <input type="text" id="txtNombre" name="txtNombre" placeholder="Captura tu nombre...">
                
                <label for="txtEdad">Edad:</label>
                <input type="number" id="txtEdad" name="txtEdad" placeholder="Captura tu edad...">
                
                <label for="txtEmail">Email:</label>
                <input type="email" id="txtEmail" name="txtEmail" placeholder="Captura tu correo...">
                
                <input type="submit" id="btnAceptar" name="btnAceptar" value="Aceptar">
    
                <p class="user-control__form__policies">Al registrarse, acepta nuestros <a href="#">Términos</a>, <a href="#">Política de datos</a> y <a href="#">Política de cookies</a>.</p>
            </form>
        </section>
        <section class="user_control__log-in">
            <p class="user-control__log-in__title">Tienes una cuenta? <a href="#">Inicia sesión</a></p>
        </section>
        <section class="user-control__downloads">
            <p class="user-control__downloads__title">Obten la app.</p>
            <div class="user-control__downloads__store">
                <a href="#" class="user-control__downloads__anchor">
                    <img class="user-control__downloads__anchor__img" src="../assets/img/icons/downloadOnAppStore.png" alt="Download on the App Store">
                </a>
                <a href="#" class="user-control__downloads__anchor">
                    <img class="user-control__downloads__anchor__img" src="../assets/img/icons/downloadOnGooglePlay.png" alt="Get it on Google Play">
                </a>
            </div>
        </section>
    </main>
</body>
</html>
