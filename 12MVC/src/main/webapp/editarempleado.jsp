<%-- 
    Document   : editarempleado
    Created on : 9/05/2022, 08:21:40 PM
    Author     : Alumno
--%>

<%@page import="modelo.empleados"%>
<%@page import="Controlador.AccionesEmpleado"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <div class="editarempleado" >
            <form name="editar" method="post" 
                  action="actualizarempleado"  >
                <table border="2" >
                    <%
                        //id
                        int id = Integer.parseInt(request.getParameter("id"));
                        //empleado
                        empleados e = AccionesEmpleado.buscarEmpleadoID(id);
                        %>
                    <tr>
                        <td>ID</td>
                        <td> <input type="hidden" 
                                    value="<%=e.getId()%>" name="id2" > </td>
                    </tr>
                    <tr>
                        <td>Nombre</td>
                        <td> <input type="text" 
                                    value="<%=e.getNombre()%>" name="nombre2"   > </td>
                    </tr>
                    <tr>
                        <td>Password</td>
                        <td> <input type="password" 
                                    value="<%=e.getPassword()%>" name="password2"  > </td>
                    </tr>
                    <tr>
                        <td>Email</td>
                        <td> <input type="email" 
                                    value="<%=e.getEmail()%>" name="email2"  > </td>
                    </tr>
                    <tr>
                        <td>Pais:</td>
                    <td> <select name="pais2" >
                            <option>Mexico</option>
                            <option>India</option>
                            <option>Por ahi</option>
                            <option>Al que nadie quiere</option>
                        </select>        </td>
                    </tr>
                    <tr>
                        <td colspan="2" > <input type="submit"
                                                 value="Actualizar Empleado">  </td>    
                    </tr>
                </table>     
            </form>
        </div>
    </body>
</html>
