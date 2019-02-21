<%-- 
    Document   : errores
    Created on : 08-10-2018, 15:11:55
    Author     : USRLC12211PROF
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        Detalle Error: <%= request.getAttribute("atrError") %>
    </body>
</html>
