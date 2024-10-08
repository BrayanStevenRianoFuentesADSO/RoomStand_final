<%-- 
    Document   : inicio_propietario
    Created on : 11/07/2024, 4:46:49 p. m.
    Author     : Propietario
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="CSS/inicio_propietario.css">
        <link rel="icon" href="../imagenes/logo.png">
        <link rel="stylesheet"
        href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" />
        <title>Inicio</title>
    </head>
    <body>
  <nav class="navbar_azul">

    <div class="navbar__imgcontainer">
      <img src="../imagenes/logo.png" alt="" class="navbar__logo">
    </div>

    <a href="../index.html" class="navbar__linkhome">RoomStand</a>
  </nav>

  <section class="section1">

    <div class="section1__degrade"></div>

    <div class="section1__titulos_container">
      <h1 class="section1__titulo">Bienvenido</h1>
      <h2 class="section1__subtitulo">Te presentamos RoomStand para propietarios, <br>
        una herramienta que te permitira:</h2>
    </div>

    <div class="section1__contenido">
      <div class="section1__icons_container">
        <div class="section1__cuadro_icono"><span class="material-symbols-outlined">add</span></div>
        <div class="section1__cuadro_icono"><span class="material-symbols-outlined">description</span></div>
        <div class="section1__cuadro_icono"><span class="material-symbols-outlined">lightbulb</span></div>
        <div class="section1__cuadro_icono"><span class="material-symbols-outlined">question_mark</span></div>
      </div>

      <div class="section1__textos_container">
        <p class="section1__texto">Registrar tu hotel</p>
        <p class="section1__texto">gestionar las reservas de una manera sencilla</p>
        <p class="section1__texto">Dar a conocer tus hospedajes</p>
        <p class="section1__texto">Brindar asesoria sobre los planes y ofertas que brindas en tu hotel</p>

      </div>

      <div class="section1__button_container">
        <button class="section1__button">Comencemos</button>
      </div>

    </div>
  </section>

  <div class="encabezado">
    <h1 class="encabezado__titulo">Registra o accede a los datos de tu hotel</h1>
  </div>


  <section class="section2">
    <h1 class="section2__titulo">Tus propiedades registradas</h1>

    <div class="section2__propiedades">

      <div class="propiedades__imgcontainer">
        <img src="../imagenes/hotel3.png" alt="" class="propiedad__logo">
        <p class="propiedad__texto">Luna azul</p>
      </div>

      <div class="propiedades__imgcontainer">
        <img src="../imagenes/hotel2.png" alt="" class="propiedad__logo">
        <p class="propiedad__texto">Jardines del eden</p>
      </div>

      <div class="propiedades__imgcontainer">
        <img src="../imagenes/hotel1.png" alt="" class="propiedad__logo">
        <p class="propiedad__texto">Sol y luna</p>
      </div>

    </div>




    <form action="SV_crear_hotel" class="section2__form" method="POST" >

      <h1 class="form__titulo">Registra una nueva</h1>

      <div class="form__container">

        <div class="form__inputs">

          <div class="form__inputs_container">
            <p class="input__titulo">Cual es el nombre de tu hotel?</p>
            <input type="text" placeholder="Digite el nombre de su hotel" class="form__input" name="nombre">

            <p class="input__titulo">Pais en el que esta hubicado</p>
            <input type="text" placeholder="Seleccione el pais" class="form__input" name="pais">

            <p class="input__titulo">Tipo de propiedad</p>
            <input type="text" placeholder="Selecciona un tipo de hospedaje" class="form__input" name="tipo">

            <p class="input__titulo">id_hotel</p>
            <input type="text" placeholder="Ingrese el id de su hotel" class="form__input" name="id">
          </div>

          <div class="form__inputs">

            <div class="form__inputs_container">

              <p class="input__titulo">Direccion del hospedaje</p>
              <input type="text" placeholder="Digite la direccion" class="form__input" name="direccion">

              <p class="input__titulo">Ciudad en la que se ubica el hotel</p>
              <input type="text" placeholder="Seleccione el pais" class="form__input" name="ciudad">

              <p class="input__titulo">Telefono del hotel</p>
              <input type="text" placeholder="Digite el telefono" class="form__input" name="telefono">

              <p class="input__titulo">servicios adicionales</p>
              <input type="text" placeholder="Cafeteria, parqueadero, etc." class="form__input" name="servicios">
            </div>
          </div>
        </div>

        <button class="form__button" type="submit">Registrar</button>
    </form>
  </section>
</body>
</html>
