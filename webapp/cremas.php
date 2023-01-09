<!DOCTYPE html>
<html lang="es">
<head>
  <meta charset="utf-8">
  <title>Proyecto ASIR</title>
  <link rel="stylesheet" href="estilos.css">
</head>
<body>
  <?php
  session_start();
  require 'header.php';
  ?>
  <div id="cuerpo">
    <?php
    require 'nav.php';
    ?>
    <div id="contenido">
      <h2>CREMAS</h2>
      <div id="vendidos">
      <?php
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
      
      $consulta = "select nombre, descripcion from productos where tipo = 'crema'";
      $resultado = mysqli_query($conexion, $consulta);
      if (!$resultado){
        echo "<p style='color:red;font-size:50%'>error</p>";
        mysqli_close($conexion);
        exit;
      } else {
        while ($fila = mysqli_fetch_row($resultado)) {
          echo '<button class="producto">';
          echo '<div class="nombre"><p>'.$fila[0].'</p></div>';
          echo '<img class="img" src="./imagenes/img.jpg">';
          echo '<div class="descripcion"><p>'.$fila[1].'</p></div>';
          echo '</button>';
        }
      }
      ?>
      </div>
    </div>
  </div>
  <?php
  require 'footer.php';

  ?>
</body>
</html>