package com.tienda.interfaces;

import java.util.ArrayList;

import com.tienda.entidad.Producto;


public interface ProductoDAO {
	int registrar(Producto pro);
	int actualizar(Producto pro);
	Producto buscarPorID (int codPro);
	ArrayList<Producto> listar();

}
