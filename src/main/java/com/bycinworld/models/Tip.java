package com.bycinworld.models;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import com.bycinworld.utils.Conexion;

public class Tip {
    private int id;
    private String contenido;

    // Getters y setters

    public int getId() {
		return id;
	}

	public void setId(int id) {
		this.id = id;
	}

	public String getContenido() {
		return contenido;
	}

	public void setContenido(String contenido) {
		this.contenido = contenido;
	}

	public static ResultSet obtenerTips() {
        Connection con = null;
        PreparedStatement ps = null;
        ResultSet rs = null;

        try {
            con = Conexion.getConexion();
            String sql = "SELECT * FROM tb_tips";
            ps = con.prepareStatement(sql);
            rs = ps.executeQuery();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        return rs;
    }

    public void agregarTip(String contenido) {
        Connection con = null;
        PreparedStatement ps = null;

        try {
            con = Conexion.getConexion();
            String sql = "INSERT INTO tb_tips (contenido) VALUES (?)";
            ps = con.prepareStatement(sql);
            ps.setString(1, contenido);
            ps.executeUpdate();
        } catch (SQLException e) {
            e.printStackTrace();
        } finally {
            try {
                if (ps != null) ps.close();
                if (con != null) con.close();
            } catch (SQLException e) {
                e.printStackTrace();
            }
        }
    }
}
