<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page import="com.emergentes.modelo.Tarea"%>
<%@page import="com.emergentes.modelo.GestorTareas"%>
<%
    if(session.getAttribute("agenda") == null){
        GestorTareas objeto1 = new GestorTareas();
        
        //int id, String descripcion, String tarea, String prioridad, String categoria
        objeto1.insertarTarea(new Tarea (1, "coca cola", 100, 10, "bebidas"));
        objeto1.insertarTarea(new Tarea (1, "Pepsi", 50, 11, "bebidas"));
        objeto1.insertarTarea(new Tarea (1, "Frack", 100, 2.50, "Galletas"));
        objeto1.insertarTarea(new Tarea (1, "Serranitas", 80, 1.50, "Galletas"));
        
        
        
        session.setAttribute("agenda", objeto1);
    }

%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <center>
        <table border= "1">
            <tr>
                <th>
        <h1>PRIMER PARCIAL TEM-742</h1>
        <h2>Nombre: Paola Aguilar Paco</h2>
        <h2>Carnet: 8429388 </h2>
                </th>
        </tr>
        </table>
    </center>
        
        <h1>Gestión De Productos</h1>
        <a href="Controller?op=nuevo">NuevoProducto</a>
        <table border="1">
            <tr>
                <th>Id</th>
                <th>Descripcion</th>
                <th>cantidad</th>
                <th>precio</th>
                <th>categoria</th>
                <th>Editar</th>
                <th>Eliminar</th>
            </tr>
            <c:forEach var="item" items="${sessionScope.agenda.getLista()}">
                <tr>
                    <td>${item.id}</td>
                    <td>${item.descripcion}</td>
                    <td>${item.cantidad }</td>
                    <td>${item.precio}</td>
                    <td>${item.categoria}</td>
                    <td><a href="Controller?op=modificar&id=${item.id}" >Editar</a></td>
                    <td><a href="Controller?op=eliminar&id=${item.id}" >Eliminar</a></td>
                    
                </tr>
                
            </c:forEach>
        </table>
    </body>
</html>
