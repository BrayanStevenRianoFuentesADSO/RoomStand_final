<%-- 
    Document   : registro_habitacion
    Created on : 11/07/2024, 4:50:12 p. m.
    Author     : Propietario
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="CSS/registro_habitacion.css">
        <link rel="icon" href="../imagenes/logo.png">
        <title>Registro habitacion</title>
    </head>
    <body>

  <nav class="navbar_azul">

    <div class="navbar__imgcontainer">
      <img src="../imagenes/logo.png" alt="" class="navbar__logo">
    </div>

    <a href="../index.html" class="navbar__linkhome">RoomStand</a>
  </nav>

  <section class="section1">
    <h1 class="section1__titulo">Registrar, editar habitacion</h1>

    <form action="" class="section1__form">



      <div class="form__container">


        <div class="form__inputs">

          <div class="input__container">
            <p class="input__titulo">Nombre</p>
            <input type="text" placeholder="Digite el nombre de la habitacion" class="input">
          </div>

          <div class="input__container">
            <p class="input__titulo">Ubicación</p>
            <input type="text" placeholder="Digite la ubicacion de la habitacion" class="input">
          </div>



        </div>


        <div class="form__inputs">

          <div class="input__container">
            <p class="input__titulo">Numero de habitacion</p>
            <input type="text" placeholder="Digite su numero de habitacion" class="input">
          </div>

          <div class="input__container">
            <p class="input__titulo">Capacidadad</p>
            <input type="number" placeholder="Digite su contraseña" class="input">
          </div>

        </div>
        <input type="file" class="imagen_room">
      </div>
      <div class="form__checkbox_container"> disponible

        
        <input type="checkbox" class="disponible" name="disponible">
      </div>
      <div class="form__container">
        <div class="form__inputs">

          <div class="input__container">

            <button class="form__button">Registrar</button>
          </div>


        </div>
      </div>
      
    </form>
  </section>

</body>
</html>
