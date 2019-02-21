/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package dataaccess;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author USRLC12209PROF
 */
public class DB {
    
    String url = "jdbc:mysql://localhost:3306/pruebabd?zeroDateTimeBehavior=convertToNull";
    String user = "root";
    String pass = "";
    Connection conexion;
           
    public DB(){
        try{
            //Conectar a la base de datos
            Class.forName("com.mysql.jdbc.Driver");                      
            conexion = DriverManager.getConnection(url, user, pass);
        }
        catch(SQLException | ClassNotFoundException ex){
            //
        }
    }
    
    public Connection getConexion(){        
        //Retornar la conexión
        return conexion;
    }
    
}
