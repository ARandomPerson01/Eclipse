package com.tienda.controlador;

import java.io.IOException;
import java.sql.Date;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

import com.tienda.dao.MySqlProductoDAO;
import com.tienda.entidad.Producto;


@WebServlet("/ServletProducto")
public class ServletProducto extends HttpServlet {
	private static final long serialVersionUID = 1L;
	//global
	private MySqlProductoDAO daoProducto=new MySqlProductoDAO(); 
    
    public ServletProducto() {
        super();
        
    }

	
	protected void service(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String pro;
		pro=request.getParameter("accion");
		if(pro.equals("grabar"))
			grabar(request,response);
		else if(pro.equals("listar"))
			listar(request,response);
		
	}
	
	protected void grabar(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		String nom, pat, mat, correo, telefono, fechaC, producto, precio, sugerencia, fechaLlegada;
		
		nom=request.getParameter("nombre");
		pat=request.getParameter("apellidoPaterno"); 
		mat=request.getParameter("apellidoMaterno"); 
		correo=request.getParameter("correo"); 
		telefono=request.getParameter("telefono"); 
		fechaC=request.getParameter("fechaCompra"); 
		producto=request.getParameter("producto"); 
		precio=request.getParameter("precio"); 
		sugerencia=request.getParameter("sugerencia"); 
		fechaLlegada=request.getParameter("fechaLlegada");
		Producto pro=new Producto();
		pro.setNombre(nom);
		pro.setPaterno(pat);
		pro.setMaterno(mat);
		pro.setCorreo(correo);
		pro.setTelefono(Long.parseLong(telefono));
		pro.setFechaCompra(Date.valueOf(fechaC));
		pro.setProducto(producto);
		pro.setPrecio(Double.parseDouble(precio));
		pro.setSugerencia(sugerencia);
		pro.setFechaLlegada(Date.valueOf(fechaLlegada));
		//invocado al metdo registrar
		daoProducto.registrar(pro);
		//lleve al formulario
		listar(request,response);	
	}
	
	protected void listar(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
		ArrayList<Producto> info=daoProducto.listar();
		request.setAttribute("listado_Producto", info); // este va a la tabla 
		request.getRequestDispatcher("/ListadoProducto.jsp").forward(request, response);
	}

}
