<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Inicio</title>
<!-- Link Favicon -->
<link rel="shortcut icon" href="img/logo.png" type="image/x-icon">
<!-- Link Boostrap -->
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
</head>
<style>
*{             /* el "*" se utiliza para tener la pantalla entera cubierta */
    padding: 0;
    margin: 0;
    box-sizing: border-box;
 }
 
section .hero{
    font-size: 10px;
    font-family: "Montserrat", sans-serif ;
}

a{
    text-decoration: none;
}
img{
    height: 100%;
    width: 100%;
    object-fit: cover;
}
.saturacion:hover{
    transform: scale(1.5);
    transition: all 1s;
    filter: grayscale(50);
}
.secsion-punto{
    font-size: 4rem;
    font-weight: 300;
    color: black;
    margin-bottom: 10px;
    text-transform: uppercase;
    letter-spacing: .2rem;
    text-align: center;
}
.secsion-punto span{
    color: crimson;
}
.container{
    min-height: 100vh;
    width: 100%;
    display: flex;
    align-items: center;
    justify-content: center;
    position: relative;
    z-index: 2;
}
video{
    position: absolute;
    top: 0;
    left: 0;
    width: 100%;
    height: 100%;
    object-fit: cover;
}
/* secsion hero */ 
#hero::after{
    content: "";
    position: absolute;
    left: 0;
    top: 0;
    height: 100%;
    width: 100%;
    background-color: black;
    opacity: .5;
    z-index: 1;
}
#hero .hero{
    max-width: 1200px;
    margin: 0 auto;
    padding: 0 50px;
    justify-content: flex-start;
}
#hero h1{
    display: block;
    width: fit-content;
    font-size: 4rem;
    position: relative;
    color: transparent;
    animation: text_reveal .5s ease forwards;
    animation-delay: 1ss;
}
#hero h1:nth-child(1){
    animation-delay: 6s;
}
#hero h1:nth-child(2){
    animation-delay: 7s;
}
#hero h1:nth-child(3){
    animation: text_reveal_name .5s ease forwards;
    animation-delay: 8s;
}

#hero h1 span{
    position: absolute;
    top: 0;
    left: 0;
    height: 100%;
    width: 0;
    background-color: crimson;
    animation: text_reveal_box 1s ease;
    animation-delay: .5s;
}
#hero h1:nth-child(1) span{
    animation-delay: 5.5s;
}
#hero h1:nth-child(2) span{ 
    animation-delay: 6.5s;
}
#hero h1:nth-child(3) span{
    animation-delay: 7.5s;
}
.cta{
    display: inline-block;
    padding: 10px 30px;
    color: crimson;
    background-color: transparent;
    border: 2px solid crimson;
    font-size: 2rem;
    text-transform: uppercase;
    letter-spacing: .1rem;
    margin-top: 30px;
    transition: .3s ease;
    transition-property: background-color, color;
}
.cta:hover{
    color: white;
    background-color: crimson;
}
/*Fin secsion hero */

/* key frames del Letras*/ 
@keyframes text_reveal_box{
    50%{
    width: 100%;
    left: 0;
    }
    100%{
        width: 0%;
        left: 100%;
    }
}
@keyframes text_reveal{
    100%{
        color:white;
    }
}
@keyframes text_reveal_name{
    100%{
        color:crimson;
        font-weight: 500;
    }
}
/*fIN SECSION KEY FRAMES */

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
<body onclick="musica()">
	<!--Carga-->
    <div id="contenedor_carga">
        <div id="carga"></div>
    </div>
    <!--Carga-->


    <!--Hero secsion-->
    <section id="hero">
        <div class="hero container">
            <div>
                <h1>HOLA,<span></span></h1> 
                <h1>SOMOS<span></span></h1>
                <h1>!OG-AROD23PR¡<span></span></h1>
                <a href="PaginaPrincipal.html" type="button" class="cta">Empezamos!!</a>
            </div>
        </div>
        <!--La eqiqueta *loop* sirve para que el video se reprodusca varias veces como un bucke-->
        <video muted autoplay loop>
            <source src="img/setup.mp4" type="video/mp4">
        </video>
    </section>
    <!--Fin Secsion Hero-->
    
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







<!-- libreria JS general -->
<script src="https://code.jquery.com/jquery-3.5.1.js"></script>
<!-- Scrip JS Boostrap -->
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
<!-- librerias de la tabla "datatable" -->	
<script src="https://cdn.datatables.net/1.13.4/js/jquery.dataTables.min.js"></script>
<script src="https://cdn.datatables.net/1.13.4/js/dataTables.bootstrap5.min.js"></script>	
<!-- libreria para validar -->
<!-- La libreria moment.js/2.29 es para utilizada para manipular y formatear fechas "IMPORTANTE" si no el input de fecha te parpedeara rojo y no podras grabar  -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/moment.js/2.29.1/moment.min.js"></script> <!-- Si no se importa esta libreria no se podra hacer el registrar el error no te botara en cosola solo en el ispecsionar de la pagina -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/bootstrap-validator/0.4.0/js/bootstrapValidator.js"></script>

<script>
//Asiendo desaparecer la carga cuando el contenido este cargado 
window.onload=function(){
    var contenedor= document.getElementById('contenedor_carga');
    
    contenedor.style.visibility='hidden';
    contenedor.style.transition=("all 5s ease-in-out").opacity='0';
}
</script>
</body>
</html>