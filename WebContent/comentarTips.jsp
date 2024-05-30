<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.sql.*, com.bycinworld.utils.Conexion" %>
<%
    String tip = request.getParameter("tip");
    Connection con = null;
    PreparedStatement ps = null;

    try {
        con = Conexion.getConexion();
        String sql = "INSERT INTO tb_tips (contenido) VALUES (?)";
        ps = con.prepareStatement(sql);
        ps.setString(1, tip);
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

    response.sendRedirect("tips.jsp");
%>
