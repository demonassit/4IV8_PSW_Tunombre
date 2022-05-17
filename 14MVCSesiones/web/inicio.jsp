<%-- 
    Document   : inicio
    Created on : 16/05/2022, 08:46:54 PM
    Author     : Alumno
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<%
    //primero vamos a saber si tiene una sesion
    String usuario = "";
    HttpSession sesionusu = request.getSession();
    if(sesionusu.getAttribute("usuario")==null){
    %>
    <jsp:forward page="index.html" >
        <jsp:param name="error" 
                   value="Es obligatorio tener una sesion activa" ></jsp:param>
    </jsp:forward>
    
    
    <%
    
    }else{
        //si hay sesion
        usuario = (String)sesionusu.getAttribute("usuario");
    }

    %>



<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        encabezado
        <h1>Si existe</h1>
        body
        <% 
            //si privilegio == 1
        %>
        
        <% 
            //si privilegio == 2
        %>
        
        <% 
            //si privilegio == 3
        %>
        patitas
    </body>
</html>
