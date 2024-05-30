package com.bycinworld.utils;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

import org.eclipse.jdt.internal.compiler.ast.Statement;

public class Conexion {
	private Statement St; 
	private Connection con;
    private static final String URL = "jdbc:postgresql://localhost:5432/bd_byciworld";
    private static final String USER = "postgres";
    private static final String PASSWORD = "1234";

    public static Connection getConexion() throws SQLException {
        try {
            Class.forName("org.postgresql.Driver");
            System.out.println("Conexion Exitosa");
            
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
            System.out.println("Error al conectarse!!");
        }
        return DriverManager.getConnection(URL, USER, PASSWORD);
    }
    
	public void cerrarConexion() {
	    try {
	        if (St != null) {
	            ((Connection) St).close();
	        }
	        if (con != null && !con.isClosed()) {
	            con.close();
	            System.out.println("Conexión cerrada correctamente.");
	        }
	    } catch (SQLException e) {
	        System.out.println("Error al cerrar la conexión: " + e.getMessage());
	    }
	}

}
