<%-- 
    Document   : iniciar_sesion
    Created on : 11/07/2024, 4:38:35 p. m.
    Author     : Propietario
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="CSS/iniciar_sesion.css">
        <link rel="icon" href="imagenes/logo.png">
        <title>Iniciar sesión</title>
    </head>
    <body>
        <header class="header">
    <div class="header__logocont"><img src="../imagenes/logo.png" alt="" class="img__logo"></div>
    <p class="header__linkhome">RoomStand</p>
  </header>

  <section class="section1">

      <form class="section1__login" id="form_login_huesped" action="SV_login_huesped" method="POST">


      <h1 class="login__titulo">Inicia sesión</h1>
      <button class="login__googlebutton">Bienvenido</button>
      <a href="login_propietario.jsp" class="login__propietario">eres propietario? click
        aqui</a>
      
      <p class="login__texto">o</p>
      <input type="text" placeholder="Correo electronico" class="login__input" id="email" name="email">
      <input type="password" placeholder="Contraseña" class="login__input" id="password" name="password">

      <div class="login__buttonscontainer">
        <button class="login__button login__button--cancelar"> <a href="index.jsp"
            class="button__cancelar_link">Cancelar</a></button>
          <button class="login__button login__button--iniciar" type="submit">Iniciar sesión</button>
      </div>

      <a href="registro_huesped.jsp" class="login__texto">O prefieres crear tu cuenta?</a>

    </form>

  </section>
        
        <<script src="JS/login_huesped.js"></script>
    </body>
</html>
