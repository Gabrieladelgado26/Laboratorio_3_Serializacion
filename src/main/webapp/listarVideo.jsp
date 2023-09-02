<%-- 
    Document   : listarVideo
    Created on : 2/09/2023, 5:23:26 p. m.
    Author     : Gabriela Delgado
--%>

<%@page import="java.util.ArrayList"%>
<%@page import="com.mycompany.mundo.Video"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Rockola</title>
    </head>
    <body>
        <h1>Listar videos</h1>
        
        <%
            // Obtener el ArrayList de la solicitud
            ArrayList <Video> misVideos = (ArrayList<Video>)request.getAttribute("misVideos");
            
           // Mostrar los datos del array
           for (Video v : misVideos)
           {
               out.println("idVideo: " + v.getIdVideo() + "<br>");
               out.println("Titulo: " + v.getTitulo() + "<br>");
               out.println("Autor: " + v.getAutor() + "<br>");
               out.println("Año: " + v.getAnio() + "<br>");
               out.println("Categoria: " + v.getCategoria() + "<br>");
               out.println("Url: " + v.getUrl() + "<br>");
               out.println("Letra: " + v.getLetra() + "<br>");
           }
        %>
    </body>
</html>