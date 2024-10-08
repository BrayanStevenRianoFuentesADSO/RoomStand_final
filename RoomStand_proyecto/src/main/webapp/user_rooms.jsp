<%-- 
    Document   : index
    Created on : 11/07/2024, 1:54:56 p. m.
    Author     : Propietario
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>RoomStand</title>
        <link rel="stylesheet" href="CSS/index_style.css">
        <link rel="icon" href="imagenes/logo.png">
    </head>
    
    <body>

  <nav class="navbar">
    <div class="navbar__imgcont1">
      <img src="imagenes/logo.png" alt="" class="navbar__logo">
    </div>

    <a href="index.html" class="navbar__linkhome">RoomStand</a>
    <a href="registro huesped/Registro_huesped.html" class="navbar__linkcreate">Crear cuenta</a><br>
    <a href="iniciar sesion/iniciar_sesion.html" class="navbar__linklogin">Iniciar sesión</a>

  </nav>

  <section class="section1">

    <div class="section1__degrade"></div>

    <div class="section1__cont">

      <h1 class="section1__titulo">Reserva tu habitación</h1>
      <p class="section1__parrafo">busca ofertas de reservacion en hoteles segun tu necesidad</p>

      <form action="" class="section1__form">
        <select class="section1__selectbox">
          <option value="opcion1">Destino</option>
          <option value="opcion1">Colombia</option>
          <option value="opcion2">Estados Unidos</option>
          <option value="opcion3">Francia</option>
        </select>

        <select class="section1__selectbox">
          <option value="opcion1">Fecha</option>
          <option value="opcion1">1 dia</option>
          <option value="opcion2">2 dias</option>
          <option value="opcion3">1 semana</option>
        </select>

        <select class="section1__selectbox">
          <option value="opcion1">Huéspedes</option>
          <option value="opcion1">1 huesped</option>
          <option value="opcion2">2 huespedes</option>
          <option value="opcion3">3 huespedes</option>
        </select>
        <br>

      </form>
      <button class="section1__button1">Buscar</button>
    </div>

  </section>




  <section class="section2">


    <h3 class="section2__subtitulo1">Estos hospedajes podrian interesarte</h3>


    <div class="section2__hotels1">

      <a class="hotels1__container" href="info habitacion/info_habitacion.html">
        <div class="hotels1__imgcont">
          <img src="imagenes/habitimg1.jpg" alt="" class="hotels1__img">
        </div>
        <p class="hotels1__texto"><b>ciudad</b> <br><br> Pais <br> <br><b>Calificación</b></p>
      </a>

      <div class="hotels1__container">
        <div class="hotels1__imgcont">
          <img src="imagenes/imghotels2.png" alt="" class="hotels1__img">
        </div>
        <p class="hotels1__texto"><b>ciudad</b> <br><br> Pais <br> <br><b>Calificación</b></p>
      </div>

      <div class="hotels1__container">
        <div class="hotels1__imgcont">
          <img src="imagenes/imghotels3.png" alt="" class="hotels1__img">
        </div>
        <p class="hotels1__texto"><b>ciudad</b> <br><br> Pais <br> <br><b>Calificación</b></p>
      </div>

      <div class="hotels1__container">
        <div class="hotels1__imgcont">
          <img src="imagenes/imghotels4.png" alt="" class="hotels1__img">
        </div>
        <p class="hotels1__texto"><b>ciudad</b> <br><br> Pais <br> <br><b>Calificación</b></p>
      </div>

    </div>


    <!-- SECCION 2 DE LOS HOTELES -->

    <h3 class="section2__subtitulo2">Descubre alojamientos en destinos populares</h3>

    <div class="section2__hotels2">

      <div class="hotels2__container">
        <div class="hotels2__imgcont">
          <img src="imagenes/imghotels5.png" alt="" class="hotels2__img">

        </div>
        <p class="hotels2__texto"><b>Nombre hotel</b> <br>Ciudad</p>
      </div>

      <div class="hotels2__container">
        <div class="hotels2__imgcont">
          <img src="imagenes/imghotels6.png" alt="" class="hotels2__img">
        </div>
        <p class="hotels2__texto"><b>Nombre hotel</b> <br>Ciudad</p>
      </div>

      <div class="hotels2__container">
        <div class="hotels2__imgcont">
          <img src="imagenes/imghotels7.png" alt="" class="hotels2__img">
        </div>
        <p class="hotels2__texto"><b>Nombre hotel</b> <br>Ciudad</p>
      </div>

    </div>

  </section>

</body>
</html>
