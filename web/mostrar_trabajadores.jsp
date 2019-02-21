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
        <h1>Trabajadores</h1>
        <%
            String url = "jdbc:mysql://localhost:3306/biblioteca?zeroDateTimeBehavior=convertToNull";
            String user = "root";
            String pass = "";
            
            Class.forName("com.mysql.jdbc.Driver");            
            Connection cnx = DriverManager.getConnection(url, user, pass);
            
            String sentencia = "SELECT isbn, titulo, autor, precio,paginas FROM libros";
            
            PreparedStatement pst = cnx.prepareStatement(sentencia);
            
            ResultSet resultado = pst.executeQuery();
            
            while(resultado.next())
            {
                String isbn = resultado.getString("isbn");
                String titulo = resultado.getString("titulo");
                String autor = resultado.getString("autor");
                int precio = resultado.getInt("precio");
                int paginas = resultado.getInt("paginas");
                
                out.append("<h2>ISBN: "+isbn+"</h2>");
                out.append("<h2>Titulo: "+titulo+"</h2>");
                out.append("<h2>Autor: "+autor+"</h2>");
                out.append("<h2>recio: "+precio+"</h2>");
                out.append("<h2>recio: "+paginas+"</h2>");
            }
        %>
        
    </body>
</html>
