<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <link rel="stylesheet" href="login_propiet.css">
        <link rel="icon" href="../imagenes/logo.png">
        <title>login propietario</title>
    </head>
    
    <body>
        <header class="header">
    <div class="header__logocont"><img src="../imagenes/logo.png" alt="" class="img__logo"></div>
    <p class="header__linkhome">RoomStand</p>
  </header>

  <section class="section1">

    <form class="section1__login">

      <h1 class="login__titulo">Inicia sesión</h1>
      <button class="login__googlebutton">Bienvenido</button>
      <a href="index.jsp" class="login__propietario">eres huesped? click
        aqui</a>
      
      <p class="login__texto">o</p>
      <input type="text" placeholder="Correo electronico" class="login__input">
      <input type="password" placeholder="Contraseña" class="login__input">

      <div class="login__buttonscontainer">
        <button class="login__button login__button--cancelar"> <a href="index.jsp"
            class="button__cancelar_link">Cancelar</a></button>
          <button class="login__button login__button--iniciar" type="submit">Iniciar sesión</button>
      </div>

      <a href="registro propietario/registro_propietario.jsp" class="login__texto">O prefieres crear tu cuenta?</a>

    </form>

  </section>
    </body>
</html>
