<%-- 
    Document   : info_habitacion
    Created on : 11/07/2024, 4:32:16 p. m.
    Author     : Propietario
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Habitacion(nombre)</title>
        <link rel="icon" href="../imagenes/logo.png">
        <link rel="stylesheet" href="info_habitacion.css">
    </head>
    <body>
        

  <nav class="navbar_naranja">
    <div class="navbar__imgcont1">
      <img src="../imagenes/logo.png" alt="" class="navbar__logo">
    </div>

    <a href="../index.html" class="navbar__linkhome">RoomStand</a>
    <a href="../registro huesped/Registro_huesped.html" class="navbar__linkcreate">Crear cuenta</a>
    <a href="../iniciar sesion/iniciar_sesion.html" class="navbar__linklogin">Iniciar sesión</a>
  </nav>

  <section class="section1">
    <div class="section1__info_hotel">
      <div class="section1__img_container">

        <div class="section1__container">
          <img src="../imagenes/room1img.png" alt="" class="info_img">
        </div>

        <div class="section1__container">
          <img src="../imagenes/room2img.png" alt="" class="info_img">
          <img src="../imagenes/room3img.png" alt="" class="info_img">
        </div>

      </div>
      <div class="section1__info_container">
        <div class="section1__info">
          <h2 class="info__nombre">Hotel la esperanza</h2>

          <p class="info__parrafo">Frente al lago Guatapé con restaurante y bar</p>
          <div class="info__calificacion">
            <p class="calificacion__numero">9.0</p>
            <p class="calificacion__tipo">Magnifico</p>

          </div>
          <button class="info__button">Reservar habitación</button>
        </div>
      </div>


    </div>
  </section>
    </body>
</html>
