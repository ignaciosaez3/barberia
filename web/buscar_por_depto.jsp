<%@page import="java.sql.ResultSet"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%
           ResultSet rs = (ResultSet)request.getAttribute("atrResultados");
        %>
        Buscar Trabajadores
        <form action="TrabajadorBuscarPorDepto.do" >
            <select name="cbbCodigoDepto">
                <option value="0">Seleccionar</option>
                <%
                    while(rs.next()){
                        out.append("<option value='"+rs.getInt("codigo")+"' >"+rs.getString("nombre")+"</option>");
                    }
                %>
            </select>
            <input type="submit" value="Buscar" />
        </form>
            
        <%
            if(request.getAttribute("atrTrabajadores") != null)
            {
                //ResultSet rsTrabajadores = (ResultSet) request.getAttribute("atrTrabajadores");
                //while(rsTrabajadores.next()){
                //    out.append("Nombre: " + rsTrabajadores.getString("nombre"));
                //}
                /*
                    TERMINAR
                */
            }
        %>
    </body>
</html>
