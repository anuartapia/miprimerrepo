<%-- 
    Document   : hola
    Created on : Feb 3, 2015, 4:21:34 PM
    Author     : anuar
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <%//aqui puedes poner codigo java%>
        <h1>
            <% 
                String nombre = "J";
                out.println("Hola "+ nombre + " !");
                for(int i = 0; i < 10; i++){
                    out.println("Iteración "+i+"<br/>");//html dentro de java
                }
            %>
        </h1>
        <!-- imprimir sin usar out -->
        Bienvenido <%=nombre%>
    </body>
</html>
