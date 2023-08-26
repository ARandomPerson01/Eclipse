package com.tienda.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;

import com.tienda.entidad.Producto;
import com.tienda.interfaces.ProductoDAO;
import com.tienda.utils.MySqlConexion;

public class MySqlProductoDAO implements ProductoDAO{

	@Override
	public int registrar(Producto pro) {
		int salida=-1;
		PreparedStatement pstm=null;
		Connection conn=null;
		try {
			conn=MySqlConexion.getConectar();
			String sql="insert into formulario values (null,?,?,?,?,?,?,?,?,?,?)";
			pstm=conn.prepareStatement(sql);
			pstm.setString(1, pro.getNombre());
			pstm.setString(2, pro.getPaterno());
			pstm.setString(3, pro.getMaterno());
			pstm.setString(4, pro.getCorreo());
			pstm.setLong(5, pro.getTelefono());
			pstm.setDate(6, new java.sql.Date(pro.getFechaCompra().getTime()));
			pstm.setString(7, pro.getProducto());
			pstm.setDouble(8, pro.getPrecio());
			pstm.setString(9, pro.getSugerencia());
			pstm.setDate(10, new java.sql.Date(pro.getFechaLlegada().getTime()));
			
			salida=pstm.executeUpdate();
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if(pstm!=null) pstm.close();
				if(conn!=null) conn.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}
		return salida;
	}

	@Override
	public int actualizar(Producto pro) {
		return 0;
	}

	@Override
	public Producto buscarPorID(int codPro) {
		// TODO Auto-generated method stub
		return null;
	}

	@Override
	public ArrayList<Producto> listar() {
		ArrayList<Producto> data=new ArrayList<Producto>();
		Producto bean=null;
		Connection cn=null;
		PreparedStatement pstm=null;
		ResultSet rs=null;
		try {
			cn=MySqlConexion.getConectar();
			String sql="select * from formulario";
			pstm=cn.prepareStatement(sql);
			rs=pstm.executeQuery();
			while(rs.next()) {
				bean=new Producto();
				bean.setId_cod(rs.getInt(1));
				bean.setNombre(rs.getString(2));
				bean.setPaterno(rs.getString(3));;
				bean.setMaterno(rs.getString(4));
				bean.setCorreo(rs.getString(5));
				bean.setTelefono(rs.getLong(6));
				bean.setFechaCompra(rs.getDate(7));
				bean.setProducto(rs.getString(8));
				bean.setPrecio(rs.getDouble(9));
				bean.setSugerencia(rs.getString(10));
				bean.setFechaLlegada(rs.getDate(11));
				
				data.add(bean);
			}
			
		} catch (Exception e) {
			e.printStackTrace();
		} finally {
			try {
				if(rs!=null) rs.close();
				if(cn!=null) cn.close();
				if(pstm!=null) pstm.close();
			} catch (Exception e2) {
				e2.printStackTrace();
			}
		}		
		return data;
	}

}
