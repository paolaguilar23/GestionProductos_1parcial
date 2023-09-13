

<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
        <h1>
            <c:if test="${requestScope.op == 'nuevo'}" var="res" scope="request">
                Modificar
            </c:if>
                PRODUCTOS
        </h1>
        <jsp:useBean id="mitarea" scope="request" class="com.emergentes.modelo.Tarea" >
            <form action="Controller" method="post">
                <table>
                    <tr>
                        <td>Id</td>
                        <td><input type="text" name="id" value="<jsp:getProperty name="mitarea" property="id"/>"/>
                        </td>
                    </tr>
                    <tr>
                        <td>Descripcion</td>
                        <td><input type="text" name="descripcion" value="<jsp:getProperty name="mitarea" property="descripcion"/>"/>
                        </td>
                    </tr>
                    <tr>
                        <td>Cantidad</td>
                         
                         <td><input type="text" name="cantidad" value="<jsp:getProperty name="mitarea" property="cantidad"/>"/>
                        </td> 
                    </tr>
                    <tr>
                        <td>Precio</td>
                         
                         <td><input type="text" name="precio" value="<jsp:getProperty name="mitarea" property="precio"/>"/>
                        </td> 
                    </tr>
                    <tr>
                        <td>Categoria</td>
                         
                         <td><input type="text" name="categoria" value="<jsp:getProperty name="mitarea" property="categoria"/>"/>
                        </td> 
                    </tr>
                    
                    <tr>
                        <td>
                            <input type="hidden" name="opg" value="${requestScope.op}" />
                            <input type="hidden" name="op" value="grabar" />
                        </td>
                        <td><input type="submit" value="Enviar" /></td>
                    </tr>
                </table>
                
            </form>
            
        </jsp:useBean>
    </body>
</html>
