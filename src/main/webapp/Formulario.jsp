<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>

<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Formulario</title>
<!-- Link Favicon -->
<link rel="shortcut icon" href="img/form.png" type="image/x-icon">
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css"rel="stylesheet"integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65"crossorigin="anonymous">
<!-- Estilos de las Tablas -->
<link href="https://cdn.datatables.net/1.13.4/css/dataTables.bootstrap5.min.css" rel="stylesheet">
</head>
<style>
	.modal-header{
		color:#fff;
		background: #428bca;
		display: flex;
  		justify-content: center;
  		
	}
	.help-block {
	  		color: red;
	}
	.form-group.has-error .form-control-label {
	  color: red;
	}
	.form-group.has-error .form-control {
	  border: 1px solid red;
	  box-shadow: 0 0 0 0.2rem rgba(250, 16, 0, 0.18);
	}
</style>
<body>
	<!-- Section Header -->
	<header class="bg-primary text-white">
	  <div class="container py-3">
	    <h1 class="text-center">OG-AROD23PR</h1>
	  </div>
	</header>
	<!-- Fin section Header -->
	
	<!-- Section Texto -->
	<section style="padding-top: 20px;">
	  <div class="container text-center">
	    <div class="rounded-circle bg-secondary text-white d-inline-flex align-items-center justify-content-center" style="width: 100px; height: 100px;">
	      <h2 class="m-0">1</h2>
	    </div>
	    <h3 class="mt-3">REGISTRE SU COMPRA</h3>
	  </div>
	</section>
	<!-- Fin Section Texto -->
	
	<!-- Formulario -->
	<div class="container-fluid">
	  <div class="row">
	    <div class="col-12">
	      <div class="bg-info p-3 mb-3">
	        <h3 class="text-white mb-0">LLENE EL FORMULARIO CON SU DATOS</h3>
	      </div>
	      <form id="frmFormulario" method="post" action="ServletProducto?accion=grabar">
	        <div class="row mb-3">
	          <div class="col-6 form-group">
	            <label for="select1" class="form-label">NONBRE</label>
	            <input type="text" class="form-control" name="nombre" id="id-nombre">
	          </div>
	        </div>
	        <div class="row mb-3">
	          <div class="col-3 form-group">
	            <label for="select1" class="form-label">APELLIDO PATERNO</label>
	            <input type="text" class="form-control" name="apellidoPaterno" id="id-apellidoPaterno">
	          </div>
	          <div class="col-3 form-group">
	            <label for="select1" class="form-label">APELLIDO MATERNO</label>
	            <input type="text" class="form-control" name="apellidoMaterno" id="id-apellidoMaterno">
	          </div>
	          <div class="col-3 form-group">
	            <label for="select1" class="form-label">CORREO</label>
	            <input type="email" class="form-control" name="correo" id="id-correo">
	          </div>
	          <div class="col-3 form-group">
	            <label for="select1" class="form-label">TELEFONO</label>
	            <input type="text" class="form-control" name="telefono" id="id-telefono">
	          </div>
	          <div class="col-3 form-group">
	            <label for="select1" class="form-label">FECHA DE COMPRA</label>
	            <input type="date" class="form-control" name="fechaCompra" id="id-fechaCompra">
	          </div>
	        </div>
	        <div class="row mb-3">
	          <div class="col-3 form-group">
	            <label for="select1" class="form-label">PRODUCTO</label>
	            <select class="form-select" name="producto" id="id-producto">
	              <option value=" ">Seleccione</option>
	              <option value="Logitech MX Master 3s S/.90.00">Logitech MX Master 3s S/.90.00</option>
	              <option value="Logitech Pebble 3S S/.18.88">Logitech Pebble 3S S/.18.88</option>
	              <option value="MX Master 3S Perfomance S/.92.00">MX Master 3S Perfomance S/.92.00</option>
	              <option value="Logitech MX Master 3S S/.94.05">Logitech MX Master 3S S/.94.05</option>
	              <option value="Monitor Samsung 24 S/.478.00">Monitor Samsung 24 S/.478.00</option>
	              <option value="Monitor Samsung 34 S/.1,299">Monitor Samsung 34 S/.1,299</option>
	              <option value="Monitor FHD 23 S/.669.00">Monitor FHD 23 S/.669.00</option>
	              <option value="Monitor gaming C27 S/.1,798">Monitor gaming C27 S/.1,798</option>
	              <option value="Lapto HP intel Core I5 S/.2500.00">Lapto HP intel Core I5 S/.2500.00</option>
	              <option value="Lapto HP intel Core I3 S/.1800.00">Lapto HP intel Core I3 S/.1800.00</option>
	              <option value="Lapto HP intel Core I7 S/.3500.00">Lapto HP intel Core I7 S/.3500.00</option>
	              <option value="Lapto HP intel Core I5 S/.2500.00">Lapto HP intel Core I5 S/.2500.00</option>
	              <option value="Placa de Video Nvidia S/.7555.00">Placa de Video Nvidia S/.7555.00</option>
	              <option value="Placa de video AMD Gigabyte S/.4700.00">Placa de video AMD Gigabyte S/.4700.00</option>
	              <option value="Placa de video Nvidia MSI S/.1099.00">Placa de video Nvidia MSI S/.1099.00</option>
	              <option value="Placa de video AMD Radeon S/.520.00">Placa de video AMD Radeon S/.520.00</option>
	              <option value="TV samsung 65 pulgadas S/.5000.00">TV samsung 65 pulgadas S/.5000.00</option>
	              <option value="Samsung Smart TV Crystal S/.4000.00">Samsung Smart TV Crystal S/.4000.00</option>
	              <option value="TV Samsung 50 pulgadas 4K S/.7000.00">TV Samsung 50 pulgadas 4K S/.7000.00</option>
	              <option value="TV Hisense 55 pulgadas 4K S/.3500.00">TV Hisense 55 pulgadas 4K S/.3500.00</option>
	              <option value="CPU core I5 4ta Gen S/.655.00">CPU core I5 4ta Gen S/.655.00</option>
	              <option value="CPU core I7 4700 Gen S/.792.00">CPU core I7 4700 Gen S/.792.00</option>
	              <option value="CPU Gamer Ryzen 55600g S/.1799.00">CPU Gamer Ryzen 55600g S/.1799.00</option>
	              <option value="CPU Gamer core I5 S/.2399.00">CPU Gamer core I5 S/.2399.00</option>
	            </select>
	          </div>
	          <div class="col-3 form-group">
	            <label for="select1" class="form-label">PRECIO</label>
	            <input type="text" class="form-control" name="precio" id="id-precio">
	          </div>
	          <div class="col-3 form-group">
	            <label for="select1" class="form-label">SUGERENCIA</label>
	            <textarea name="sugerencia" id="id-sugerencia" rows="" cols=""></textarea>
	          </div>
	          <div class="col-3 form-group">
	            <label for="select1" class="form-label">FECHA LLEGADA</label>
	            <input type="date" class="form-control" name="fechaLlegada" id="id-fechaLlegada">
	          </div>
	        </div>
	        <!-- El <hr> sirve para la linea de separacion -->
	        <hr>
	        <div class="row d-flex justify-content-between">
	          <div class="col-1 ps-0">
	            <button type="submit" class="btn btn-success w-45 ms-2">Registrar</button>
	          </div>
	        </div>
	      </form>
	    </div>
	  </div>
	</div>
	<!-- Fin Formulario -->

	<!-- DIV de separacion -->
	<div style="padding-top: 30px;"></div>
	<!-- Fin DIV separacion -->





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
</body>
</html>