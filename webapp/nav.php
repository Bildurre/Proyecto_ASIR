<nav>
  <button id="index" onclick="funcion_url(this.id)">Home</button>
  <button id="catalogo">Catálogo</button>
  <button id="aceites" class="catalogo" onclick="funcion_url(this.id)">Aceites</button>
  <button id="cacaos"class="catalogo" onclick="funcion_url(this.id)">Cacaos</button>
  <button id="cremas"class="catalogo" onclick="funcion_url(this.id)">Cremas</button>
  <button id="pomadas"class="catalogo" onclick="funcion_url(this.id)">Pomadas</button>
  <button id="tinturas"class="catalogo" onclick="funcion_url(this.id)">Tinturas</button>
  
  
  <button id="pedidos" onclick="funcion_url(this.id)"
  <?php if (!$_SESSION['id']) echo 'style=display:none;' ;?>
  >Mis Pedidos</button>
 
 
  <button id="about" onclick="funcion_url(this.id)">About</button>

<script type="text/javascript">
function funcion_url(id) {
  window.location = id+'.php';
}
</script> 




<script type="text/javascript">
  onload = function() {
    var button = document.getElementsByClassName("catalogo");
    for (i=0; i<button.length; i++) {
      button[i].style.display = "none";
    };
  };

  document.getElementById("catalogo").onclick = function() {
    var button = document.getElementsByClassName("catalogo");
    for (i=0; i<button.length; i++) {
      if (button[i].style.display == "none") {
        button[i].style.display = "block";
      } else {
        button[i].style.display = "none";
      };
    };
  };
</script>
</nav>