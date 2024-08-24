<%-- 
    Document   : registro_huesped
    Created on : 11/07/2024, 4:53:21 p. m.
    Author     : Propietario
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="CSS/Registro_huesped.css">
        <link rel="icon" href="../imagenes/logo.png">
        <title>Crear cuenta</title>
    </head>
    <body>

  <nav class="navbar_naranja">
    <div class="navbar__imgcontainer">
      <img src="../imagenes/logo.png" alt="" class="navbar__logo">
    </div>

    <a href="../index.html" class="navbar__linkhome">RoomStand</a>
  </nav>

  <section class="section1">

    <h3 class="section1__titulo">Registro de huesped</h3>

   
    <form action="SV_crear_huesped" method="POST" class="section1__form" >


      <div class="form__container">
        <p class="input__titulo">Nombres</p>
        <input type="text" placeholder="Digite su nombre" class="section1__input" name="nombre" id="nombre" required="on">

        <p class="input__titulo">Procedencia</p>
        <input type="text" placeholder="Digite su pais de procedencia" class="section1__input" name="pais" id="pais" required="on">

        <p class="input__titulo">Numero de identificacion</p>
        <input type="text" placeholder="Digite su numero de identificacion" class="section1__input" name="id" id="id" required="on">
      </div>


      <div class="form__container">
        <p class="input__titulo">Teléfono</p>
        <input type="text" inputmode="numeric" placeholder="Digite su numero de telefono" class="section1__input" name="telefono" id="telefono" required="on">

        <p class="input__titulo">Correo electronico</p>
        <input type="text" placeholder="Digite su Email" class="section1__input" name="email" id="email" required="on">

        <p class="input__titulo"><br>Contraseña </p>
        <input type="password" placeholder="Digite su contraseña" class="section1__input" name="password" id="password" required="on">
      </div>
        <button class="form__button" type="submit" name="registrar">Registrar</button>
    </form>
  </section>

      <script src="JS/app.js" type="module"></script> 
</body>
</html>
