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
      <h2>MÁS VENDIDOS</h2>
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
      $consulta1 = 'select id_formato from listas_pedidos
                    group by id_formato
                    order by sum(cantidad)
                    limit 6';
      $resultado1 = mysqli_query($conexion, $consulta1);
      if (!$resultado1){
        echo "<p style='color:red;font-size:50%'>error</p>";
        mysqli_close($conexion);
        exit;
      } else {
        while ($fila = mysqli_fetch_row($resultado1)) {
          $consulta2 = 'select id_producto from formatos
          where id_formato = '.$fila[0];
          $resultado2 = mysqli_query($conexion, $consulta2);
          if (!$resultado2){
            echo "<p style='color:red;font-size:50%'>error</p>";
            mysqli_close($conexion);
            exit;
          } else {
            while ($fila = mysqli_fetch_row($resultado2)) {
              $consulta3 = "select nombre, descripcion from productos
              where id_producto = '".$fila[0]."'";
              $resultado3 = mysqli_query($conexion, $consulta3);
              if (!$resultado3){
                echo "<p style='color:red;font-size:50%'>error</p>";
                mysqli_close($conexion);
                exit;
              } else {
                while ($fila = mysqli_fetch_row($resultado3)) {
                  echo '<div class="producto">';
                  echo '<div class="nombre"><p>'.$fila[0].'</p></div>';
                  echo '<img class="img" src="./imagenes/img.jpg">';
                  echo '<div class="descripcion"><p>'.$fila[1].'</p></div>';
                  echo '</div>';
                }
              }
            }
          }
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