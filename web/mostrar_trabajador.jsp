<%-- 
    Document   : mostrar_trabajador
    Created on : 28-09-2018, 15:35:45
    Author     : USRLC12209PROF
--%>

<%@page import="java.sql.ResultSet"%>
<%@page import="java.sql.PreparedStatement"%>
<%@page import="java.sql.DriverManager"%>
<%@page import="java.sql.Connection"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
            String rut = request.getParameter("txtRut");
            
            String url = "jdbc:mysql://localhost:3306/pruebabd?zeroDateTimeBehavior=convertToNull";
            String user = "root";
            String pass = "";
            
            Class.forName("com.mysql.jdbc.Driver");            
            Connection cnx = DriverManager.getConnection(url, user, pass);
            
            String sentencia = "SELECT t.rut, t.nombre, d.nombre AS departamento FROM trabajador t JOIN departamento d ON t.codigo_depto = d.codigo WHERE rut = '"+rut+"'";
            
            PreparedStatement pst = cnx.prepareStatement(sentencia);
            
            ResultSet resultado = pst.executeQuery();
            
            if(resultado.next())
            {                
                out.append("<h2>Rut: "+resultado.getString("rut")+"</h2>");
                out.append("<h2>Nombre: "+resultado.getString("nombre")+"</h2>");
                out.append("<h2>Departamento: "+resultado.getString("departamento")+"</h2>");
            }
            
        %>
    </body>
</html>
