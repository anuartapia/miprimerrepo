<%-- 
    Document   : hola3
    Created on : Feb 3, 2015, 4:51:33 PM
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
        <% String nombre = "Ja";%>
        <h1> Bienvenido <%=nombre%> </h1>
        <form action="hola3.jsp" method="post">
            <%--usamos post para que no se pasen los params por url (no aparezcan)--%>
            Dame tu nombre: <input type="text" name="nombre"/><br>
            Dame tu contraseña: <input type="password" name="password"/><br>
            <input type="submit"/>
        </form>
        <%
            String nombre2 = request.getParameter("nombre");
            String pass = request.getParameter("password");
            if (nombre2 != null && !nombre2.equals("") && pass != null && !pass.equals("")) {
                out.println("Que aburrido eres " + nombre2 + "<br>");
                out.println("Tu contraseña es " + pass + "<br>");
                request.setAttribute("nombre", nombre2);
                request.setAttribute("password", pass);
                response.sendRedirect("hola2");//redirigimos a otra url (servlet en este caso)
            }
        %>
    </body>
</html>
