<%@taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@page import="com.emergentes.modelo.Vacuna" %>
<%@page import="com.emergentes.modelo.GestorVacuna" %>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    if(session.getAttribute("agenda") == null) {
        GestorVacuna objeto1 = new GestorVacuna();
        
        objeto1.insertarVacuna(new Vacuna(1, "Angel E. Bautista Cabrera", 60, 1.68, "SI"));
        objeto1.insertarVacuna(new Vacuna(2, "Angela Bautista Cabrera", 70, 1.60, "NO"));
        objeto1.insertarVacuna(new Vacuna(3, "Ana Bautista Cabrera", 65, 1.65, "SI"));
        
        session.setAttribute("agenda", objeto1);
    }
%>

<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Examen</title>
    </head>
    <body>
        <table border="1" cellspacing="0" align="center">
            <tr>
                <td>PRIMER PARCIAL TEM-742
                <br>Nombre: Angel Esteban Bautista Cabrera
                <br> Carnet: 10736045</td>
            </tr>
        </table>
        <h1 align="center">REGISTRO DE VACUNAS</h1>
        <a href="Controller?op=nuevo">Nuevo</a>
        <table border="1" cellspacing="0">
            <tr>
                <th>ID</th>
                <th>NOMBRE</th>
                <th>PESO</th>
                <th>TALLA</th>
                <th>VACUNA</th>
                <th></th>
                <th></th>
            </tr>
            <c:forEach var="item" items="${sessionScope.agenda.getLista()}">
            <tr>
                <td>${item.id}</td>
                <td>${item.nombre}</td>
                <td>${item.peso}</td>
                <td>${item.talla}</td>
                <td>${item.vacuna}</td>
                <td><a href="Controller?op=modificar&id=${item.id}">Modificar</a></td>
                <td><a href="Controller?op=eliminar&id=${item.id}">Eliminar</a></td>
            </tr>
            </c:forEach>
        </table>
    </body>
</html>
