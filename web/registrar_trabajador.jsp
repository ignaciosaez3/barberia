<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        
        <form action="TrabajadorRegistrar.do">
            Rut <input type="text" name="txtRut" /><br/>
            Nombre <input type="text" name="txtNombre" /><br/>
            Depto <select name="cbbDepto">
                    <option>Seleccionar</option>
                    <option value="1">FINANZAS</option>
                    <option value="2">MARKETING</option>
                    <option value="3">RRHH</option>
                  </select>
            
            <br/>
            <input type="submit" value="Guardar" />
        </form>
        
    </body>
</html>
