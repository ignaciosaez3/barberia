/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package control;

import java.io.IOException;
import java.io.PrintWriter;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;

/**
 *
 * @author USRLC12209PROF
 */
@WebServlet(name = "TrabajadorRegistrar", urlPatterns = {"/TrabajadorRegistrar.do"})
public class TrabajadorRegistrar extends HttpServlet {

     protected void processRequest(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
      
         String rut = request.getParameter("txtRut");
         String nombre = request.getParameter("txtNombre");
         int codDepto = Integer.parseInt(request.getParameter("cbbDepto"));
         
         String url = "jdbc:mysql://localhost:3306/pruebabd?zeroDateTimeBehavior=convertToNull";
         String user = "root";
         String pass = "";
         //String st = "INSERT INTO trabajador VALUES ('111-4','JUAN LEIVA',3)";
         //String st = "INSERT INTO trabajador VALUES ('"+rut+"','"+nombre+"',"+codDepto+")";
         String st = "INSERT INTO trabajador VALUES (?,?,?)";
         
         try
        {
            Class.forName("com.mysql.jdbc.Driver");                      
            Connection conexion = DriverManager.getConnection(url, user, pass);
            
            PreparedStatement pst = conexion.prepareStatement(st);
            pst.setString(1, rut);
            pst.setString(2, nombre);
            pst.setInt(3, codDepto);
            
            pst.executeUpdate();
        } 
        catch (SQLException | ClassNotFoundException ex) 
        {
            String mensajeError = ex.getMessage();
        }
     
    }

    // <editor-fold defaultstate="collapsed" desc="HttpServlet methods. Click on the + sign on the left to edit the code.">
    /**
     * Handles the HTTP <code>GET</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Handles the HTTP <code>POST</code> method.
     *
     * @param request servlet request
     * @param response servlet response
     * @throws ServletException if a servlet-specific error occurs
     * @throws IOException if an I/O error occurs
     */
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        processRequest(request, response);
    }

    /**
     * Returns a short description of the servlet.
     *
     * @return a String containing servlet description
     */
    @Override
    public String getServletInfo() {
        return "Short description";
    }// </editor-fold>

}
