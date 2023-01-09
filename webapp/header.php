
<header>
  <h1>ESTA ES UNA TIENDA DE PRODUCTOS NATURALES</h1>

  
  <form action="<?php echo $_SERVER['PHP_SELF']; ?>" method="post">
  <?php 
  if (empty($_SESSION['id'])){?>
    <p><input type="email" name="email" placeholder="email"></p>
    <p><input type="password" name="contrasenia" placeholder="contraseña"></p>
    <p><input type="submit" name="login" value="login"> or <a href="">sign up</a></p>
    <?php 
    if (!empty($_POST['contrasenia']) && !empty($_POST['email'])){
      $host = '192.168.100.11';
      $user = "admin";
      $password = "12345678";
      $data_base = "proyecto";

      $conexion = mysqli_connect($host,$user,$password,$data_base);
      if (!$conexion){
        echo "<p style='color:red'>Error al conectar con la base de datos.<br>";
        echo "C&oacute;digo de error: ".mysqli_connect_errno()."<br>";
        echo "Descripci&oacute;n del error: ".mysqli_connect_error()."</p>";
        exit;
      }
      $seleccion = mysqli_select_db($conexion,"proyecto");
      if (!$seleccion){
        echo "<p style='color:red'>Error al seleccionar la base de datos.<br>";
        echo "C&oacute;digo de error: ".mysqli_errno($conexion)."<br>";
        echo "Descripci&oacute;n del error: ".mysqli_error($conexion)."</p>";
        mysqli_close($conexion);
        exit;
      }

      $consulta = "select id_usuario, nombre from usuarios
                  where email = '".$_POST['email']."'
                  and contrasenia = MD5('".$_POST['contrasenia']."')";
      $resultado = mysqli_query($conexion, $consulta);

      if (!$resultado){
        echo "<p style='color:red;font-size:50%'>error al validar usuario</p>";
        mysqli_close($conexion);
        exit;
      } elseif (mysqli_num_rows($resultado) == 0) {
        header("Location: http://localhost/bad_login.php");
        exit();
      } elseif (mysqli_num_rows($resultado) == 1) {
        $_SESSION['id'] = 'holaaaaaaa';
        echo $_SESSION['id'];
        while ($fila = mysqli_fetch_row($resultado)) {
          $_SESSION['id'] = $fila[0];
          $_SESSION['nombre'] = $fila[1];
        }
        mysqli_free_result($resultado);
        /*header("Location: ".$_SERVER['PHP_SELF']);*/
        header("Location: http://localhost/index.php");
      }
    }
  } else {
    echo '<p>Bienvenid@, '.$_SESSION['nombre'].'!</p>';
    echo '<p><input type="submit" name="logout" value="logout"></p>';
    if (!empty($_POST['logout'])) {
      session_destroy();
      echo$_SERVER['PHP_SELF'];
      /*header("Location: ".$_SERVER['PHP_SELF']);*/
      header("Location: http://localhost/index.php");
    }
  }
    ?>
  </form>
</header>
