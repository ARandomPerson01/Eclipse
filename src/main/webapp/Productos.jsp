<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Productos</title>
<!-- Link Favicon -->
<link rel="shortcut icon" href="img/carrito1.png" type="image/x-icon">
<!-- Link Boostrap -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
</head>
<style>
*{             /* el "*" se utiliza para tener la pantalla entera cubierta */
    padding: 0;
    margin: 0;
    box-sizing: border-box;
 }
/* Inicio secsion Footer */
#footer{
    background-color: black;
}
#footer .footer {
    min-height: 200px;
    flex-direction: column;
    padding-top: 50px;
    padding-bottom: 10px;
}
#footer h2{
    text-align: center;       /* no se centrava normal y por eso el text alin center ojo */
    color: white;
    font-weight: 500;
    font-size: 1.8rem;
    letter-spacing: .1rem;
    margin-top: 10px;
    margin-bottom: 10px;
}
#footer .social-icono{
    display: flex;
    margin-bottom: 30px;
    justify-content: center;  /* no se centrava normal y por eso el justify  center ojo "ICONOS"*/
}
#footer .social-articulo{
    height: 45px;
    width: 45px;
    margin-bottom: 0 5px;
}
.marca h1{
    text-align: center;      /* no se centrava normal y por eso el text alin center ojo */
    font-size: 3rem;
    text-transform: uppercase;
    color: white;
}
.marca h1 span{
    color: crimson;
}
#footer p{
    color: white;
    font-size: 1.3rem;
    text-align: center;    /* no se centrava normal y por eso el text alin center ojo */
}
/*Fin Secsion Footer*/ 

/* bloque carga */
#contenedor_carga{
    background-color: black;
    height: 100%;
    width: 100%;
    position: fixed;
    -webkit-transition:all 5s ease-in-out;
    -o-transition: all 5s ease-in-out;
    transition: all 5s ease-in-out;
    z-index: 10000;
}
#carga{
    border: 15px solid white;
    border-top-color: crimson;
    border-top-style: groove;
    height: 100px;
    width: 100px;
    border-radius: 100%;
    position: absolute;
    top: 0;
    left: 0;
    right: 0;
    bottom: 0;
    margin: auto;
    animation: girar 1.5s linear infinite;
    -o-animation: girar 1.5s linear infinite;
    animation: girar 1.5s linear infinite;
}

/* blqoue key frames */
@keyframes girar {
    from{transform: rotate(0deg);}
    to{transform: rotate(360deg);}
}
/* fin blque key frames */

/*Fin bloque Carga*/
</style>

<body>
	<div class="container">
	
    <center><a class="nav-link" href="Formulario.jsp"><img src="img/carrito1.png" width="10%" height="10%" alt="Imagen 1"></a></center>
    
    <!-- 1er bloque -->
    <div class="row">
      <div class="col-md-2">
        <div class="card">
          <img src="img/mause1.png" class="card-img-top" width="100px" height="100px" alt="Imagen 1">
          <div class="card-body">
            <p class="card-text">Logitech MX Master 3s S/.90.00</p>
          </div>
        </div>
        <div class="card">
          <img src="img/mause2.png" class="card-img-top" width="100px" height="100px" alt="Imagen 2">
          <div class="card-body">
            <p class="card-text">Logitech Pebble 3S S/.18.88</p>
          </div>
        </div>
        <div class="card">
          <img src="img/mause3.png" class="card-img-top" width="100px" height="100px" alt="Imagen 3">
          <div class="card-body">
            <p class="card-text">MX Master 3S Perfomance S/.92.00</p>
          </div>
        </div>
        <div class="card">
          <img src="img/mause4.png" class="card-img-top" width="100px" height="100px" alt="Imagen 4">
          <div class="card-body">
            <p class="card-text">Logitech MX Master 3S S/.94.05</p>
          </div>
        </div>
      </div>
      
      <!-- 2do bloque -->
      <div class="col-md-2">
        <div class="card">
          <img src="img/moni1.png" class="card-img-top" width="100px" height="100px" alt="Imagen 1">
          <div class="card-body">
            <p class="card-text">Monitor Samsung 24 S/.478.00</p>
          </div>
        </div>
        <div class="card">
          <img src="img/moni2.png" class="card-img-top" width="100px" height="100px" alt="Imagen 2">
          <div class="card-body">
            <p class="card-text">Monitor Samsung 34 S/.1,299</p>
          </div>
        </div>
        <div class="card">
          <img src="img/moni3.png" class="card-img-top" width="100px" height="100px" alt="Imagen 3">
          <div class="card-body">
            <p class="card-text">Monitor FHD 23 S/.669.00</p>
          </div>
        </div>
        <div class="card">
          <img src="img/moni4.png" class="card-img-top" width="100px" height="100px" alt="Imagen 4">
          <div class="card-body">
            <p class="card-text">Monitor gaming C27 S/.1,798</p>
          </div>
        </div>
      </div>
      
      <!-- 3er bloque -->
      <div class="col-md-2">
        <div class="card">
          <img src="img/nueve1.png" class="card-img-top" width="100px" height="100px" alt="Imagen 1">
          <div class="card-body">
            <p class="card-text">Lapto HP intel Core I5 S/.2500.00</p>
          </div>
        </div>
        <div class="card">
          <img src="img/nueve2.png" class="card-img-top" width="100px" height="100px" alt="Imagen 2">
          <div class="card-body">
            <p class="card-text">Lapto HP intel Core I3 S/.1800.00</p>
          </div>
        </div>
        <div class="card">
          <img src="img/nueve3.png" class="card-img-top" width="100px" height="100px" alt="Imagen 3">
          <div class="card-body">
            <p class="card-text">Lapto HP intel Core I7 S/.3500.00</p>
          </div>
        </div>
        <div class="card">
          <img src="img/nueve4.png" class="card-img-top" width="100px" height="100px" alt="Imagen 4">
          <div class="card-body">
            <p class="card-text">Lapto HP intel Core I5 S/.2500.00</p>
          </div>
        </div>
      </div>
      
      <!-- 4to Bloque -->
      <div class="col-md-2">
        <div class="card">
          <img src="img/tarjeta1.png" class="card-img-top" width="100px" height="100px" alt="Imagen 1">
          <div class="card-body">
            <p class="card-text">Placa de Video Nvidia S/.7555.00</p>
          </div>
        </div>
        <div class="card">
          <img src="img/tarjeta2.png" class="card-img-top" width="100px" height="100px" alt="Imagen 2">
          <div class="card-body">
            <p class="card-text">Placa de video AMD Gigabyte S/.4700.00</p>
          </div>
        </div>
        <div class="card">
          <img src="img/tarjeta3.png" class="card-img-top" width="100px" height="100px" alt="Imagen 3">
          <div class="card-body">
            <p class="card-text">Placa de video Nvidia MSI S/.1099.00</p>
          </div>
        </div>
        <div class="card">
          <img src="img/tarjeta4.png" class="card-img-top" width="100px" height="100px" alt="Imagen 4" >
          <div class="card-body">
            <p class="card-text">Placa de video AMD Radeon S/.520.00</p>
          </div>
        </div>
      </div>
      
      <!-- 5 Bloque --> 
      <div class="col-md-2">
        <div class="card">
          <img src="img/doce1.png" class="card-img-top" width="100px" height="100px" alt="Imagen 1">
          <div class="card-body">
            <p class="card-text">TV samsung 65 pulgadas S/.5000.00</p>
          </div>
        </div>
        <div class="card">
          <img src="img/doce2.png" class="card-img-top" width="100px" height="100px" alt="Imagen 2">
          <div class="card-body">
            <p class="card-text">Samsung Smart TV Crystal S/.4000.00</p>
          </div>
        </div>
        <div class="card">
          <img src="img/doce3.png" class="card-img-top" width="100px" height="100px" alt="Imagen 3">
          <div class="card-body">
            <p class="card-text">TV Samsung 50 pulgadas 4K S/.7000.00</p>
          </div>
        </div>
        <div class="card">
          <img src="img/doce4.png" class="card-img-top" width="100px" height="100px" alt="Imagen 4" >
          <div class="card-body">
            <p class="card-text">TV Hisense 55 pulgadas 4K S/.3500.00</p>
          </div>
        </div>
      </div>
      
      <!-- 6 Bloque -->
      <div class="col-md-2">
        <div class="card">
          <img src="img/sesto1.png" class="card-img-top" width="100px" height="100px" alt="Imagen 1">
          <div class="card-body">
            <p class="card-text">CPU core I5 4ta Gen S/.655.00</p>
          </div>
        </div>
        <div class="card">
          <img src="img/sesto2.png" class="card-img-top" width="100px" height="100px" alt="Imagen 2">
          <div class="card-body">
            <p class="card-text">CPU core I7 4700 Gen S/.792.00</p>
          </div>
        </div>
        <div class="card">
          <img src="img/sesto3.png" class="card-img-top" width="100px" height="100px" alt="Imagen 3">
          <div class="card-body">
            <p class="card-text">CPU Gamer Ryzen 55600g S/.1799.00</p>
          </div>
        </div>
        <div class="card">
          <img src="img/sesto4.png" class="card-img-top" width="100px" height="100px" alt="Imagen 4" >
          <div class="card-body">
            <p class="card-text">CPU Gamer core I5 S/.2399.00</p>
          </div>
        </div>
      </div>
      
    </div>
  </div>
  





	<!--Inicio Secsion Footer-->
    <section id="footer">
      <div class="footer conteiner">
        <div class="marca"><h1><span>S</span>omos <span>O</span>G-AROD23PR</h1></div>
          <h2>Gracias Por su Visita!!</h2>
          <div class="social-icono">
              <div class="social-articulo">
                  <a href="#" target="_blank"><img class="saturacion" src="img/twitter.png" alt=""></a>
              </div>
              <div class="social-articulo">
                  <a href="#" target="_blank"><img class="saturacion" src="img/whasap.png" alt=""></a>
              </div>
              <div class="social-articulo">
                  <a href="#" target="_blank"><img class="saturacion" src="img/youtube.png" alt=""></a>
              </div>
              <div class="social-articulo">
                  <a href="#" target="_blank"><img class="saturacion" src="img/facebook.png" alt=""></a>
              </div>
          </div>           
          <p>Servicios Reservados Lima 11/06/2023-Peru</p>
      </div>
    </section>
  <!--Fin Inicio Secsion Footer-->


<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>	
</body>
</html>