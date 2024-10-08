<%-- 
    Document   : estadisticas
    Created on : 11/07/2024, 2:05:39 p. m.
    Author     : Propietario
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet"
        href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
        <link rel="stylesheet" href="CSS/estadisticas.css">
        <title>Seguimiento</title>
    </head>
    
    <body>
  <nav class="navbar">

    <div class="navbar__logo_container">
      <img src="../imagenes/logo.png" alt="" class="navbar__logo">
      <h1 class="navbar__titulo">RoomStand</h1>
    </div>

    <div class="navbar__button_container">
      <a href="../iniciar sesion/iniciar_sesion.html" class="navbar__button">Volver</a>
      <a href="../iniciar sesion/iniciar_sesion.html" class="navbar__button"><span
          class="material-symbols-outlined volver__icono">logout</span></a>

    </div>

  </nav>

  <div class="section1">

    <div class="estadisticas">

      <div class="register__rooms">
        <div class="register__titulo_container">
          <span class="material-symbols-outlined icon_calendar">
            calendar_month
          </span>

          <h1 class="register__titulo">Habitaciones registradas</h1>
        </div>

        <div class="register__cards__container">

          <div class="register__card">
            <img src="../imagenes/imghotels1.png" alt="" class="register__img">
          </div>

          <div class="register__card">
            <img src="../imagenes/imghotels2.png" alt="" class="register__img">
          </div>

          <div class="register__card">
            <img src="../imagenes/imghotels3.png" alt="" class="register__img">
          </div>

          <div class="register__card">
            <img src="../imagenes/imghotels4.png" alt="" class="register__img">
          </div>

        </div>
      </div>

      <div class="reservaciones">
        <div class="reservacion__titulo_container">
          <span class="material-symbols-outlined icono_estadistica">
            monitoring
          </span>
          <h1 class="reserva__titulo">Ultimas reservaciones</h1>
        </div>

        <div class="reserva__cards">
          <div class="reserva__card">
            <img src="../imagenes/statroom1.png" alt="" class="reserva__img">
            <p class="reserva__nombre_room">Nombre</p>
          </div>

          <div class="reserva__card">
            <img src="../imagenes/statroom2.png" alt="" class="reserva__img">
            <p class="reserva__nombre_room">Nombre</p>
          </div>

          <div class="reserva__card">
            <img src="../imagenes/statroom3.png" alt="" class="reserva__img">
            <p class="reserva__nombre_room">Nombre</p>
          </div>
        </div>
      </div>



      <div class="reservaciones">
        <div class="reservacion__titulo_container">
          <span class="material-symbols-outlined icono estrella">
            star
          </span>
          <h1 class="reserva__titulo">Habitaciones mas demandadas</h1>
        </div>

        <div class="reserva__cards">
          <div class="reserva__card">
            <img src="../imagenes/statroom1.png" alt="" class="reserva__img">
            <p class="reserva__nombre_room">Nombre</p>
          </div>

          <div class="reserva__card">
            <img src="../imagenes/statroom2.png" alt="" class="reserva__img">
            <p class="reserva__nombre_room">Nombre</p>
          </div>

          <div class="reserva__card">
            <img src="../imagenes/statroom3.png" alt="" class="reserva__img">
            <p class="reserva__nombre_room">Nombre</p>
          </div>
        </div>
      </div>



      <div class="reservaciones">
        <div class="reservacion__titulo_container">
          <span class="material-symbols-outlined">
            cancel
          </span>
          <h1 class="reserva__titulo">Reservaciones canceladas</h1>
        </div>

        <div class="reserva__cards">
          <div class="reserva__card">
            <img src="../imagenes/statroom1.png" alt="" class="reserva__img">
            <p class="reserva__nombre_room">Nombre</p>
          </div>

          <div class="reserva__card">
            <img src="../imagenes/statroom2.png" alt="" class="reserva__img">
            <p class="reserva__nombre_room">Nombre</p>
          </div>

          <div class="reserva__card">
            <img src="../imagenes/statroom3.png" alt="" class="reserva__img">
            <p class="reserva__nombre_room">Nombre</p>
          </div>
        </div>
      </div>

    </div>

    <div class="comentarios">
      <div class="comentarios__titulo">
        <span class="material-symbols-outlined">
          rate_review
        </span>
        <h1 class="comentarios__titulo">Reseñas y comentarios recientes</h1>
      </div>

      <div class="comentario">

        <div class="comentario__img_container"><img src="" alt=""></div>

        <p class="comentario__texto">
          <b>Nombre</b><br> <br>La experiencia fue muy positiva. El personal siempre estuvo dispuesto a ayudar y la
          habitación era impecable y
          acogedora. La ubicación era conveniente, cerca de lugares de interés pero lo suficientemente aislada para
          disfrutar de
          tranquilidad. El desayuno ofrecía una buena variedad y todo estaba fresco.
        </p>
      </div>

      <div class="comentario">

        <div class="comentario__img_container"><img src="" alt=""></div>

        <p class="comentario__texto">
          <b>Nombre</b><br> <br>La experiencia fue muy positiva. El personal siempre estuvo dispuesto a ayudar y la
          habitación era impecable y
          acogedora. La ubicación era conveniente, cerca de lugares de interés pero lo suficientemente aislada para
          disfrutar de
          tranquilidad. El desayuno ofrecía una buena variedad y todo estaba fresco.
        </p>
      </div>
    </div>
  </div>

</body>
</html>
