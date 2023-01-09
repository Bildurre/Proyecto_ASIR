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
    <h2>MIS PEDIDOS</h2>
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

      $consulta = "select id_pedido, fecha, estado
                    from pedidos
                    where id_usuario = '".$_SESSION['id']."'";
      $resultado = mysqli_query($conexion, $consulta);

      

      if (!$resultado){
        echo "<p style='color:red;font-size:50%'>error al validar usuario</p>";
        mysqli_close($conexion);
        exit;
      } else {
        echo '<div id="pedido">';
        echo '<div class="contenedor_pedido"><div class="celda_pedido">nº de pedido</div>';
        echo '<div class="celda_pedido">fecha</div><div class="celda_pedido">estado</div></div>';
        while ($fila = mysqli_fetch_row($resultado)) {
          $consulta2 = "select p.nombre, f.volumen, l.cantidad
                    from listas_pedidos l join formatos f
                    on l.id_formato = f.id_formato
                    join productos p
                    on p.id_producto = f.id_producto
                    where l.id_pedido = ".$fila[0];
          $resultado2 = mysqli_query($conexion, $consulta2);
          echo '<div class="contenedor_pedido"><div class="celda_pedido">'.$fila[0].'</div>';
          echo '<div class="celda_pedido">'.$fila[1].'</div><div class="celda_pedido">'.$fila[2].'</div></div>';
          echo '<div class="contenedor_detalle"><div class="celda_detalle">producto</div>';
          echo '<div class="celda_detalle">volumen</div><div class="celda_detalle">cantidad</div></div>';
          $n = 2;
          while ($fila2 = mysqli_fetch_row($resultado2)) {
            echo '<div class="contenedor_detalle"><div class="celda_detalle">'.$fila2[0].'</div>';
            echo '<div class="celda_detalle">'.$fila2[1].'</div>';
            echo '<div class="celda_detalle">'.$fila2[2].'</div></div>';
          }
        }
        echo '</div>';
        mysqli_free_result($resultado);
        mysqli_free_result($resultado2);
      }
    ?>
    </div>
  </div>
  <?php
  require 'footer.php';

  ?>
</body>
</html>