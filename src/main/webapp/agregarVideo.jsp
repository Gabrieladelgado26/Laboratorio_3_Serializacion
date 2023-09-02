<%-- 
    Document   : agregarVideo
    Created on : 2/09/2023, 5:24:35 p. m.
    Author     : Gabriela Delgado
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Rockola</title>
    </head>
    <body>
        <h1>Sistema reproductor de videos</h1>
        <form action ="SvVideo" method = "POST">
            
            <label for = "idVideo">idVideo:</label>
            <input type="text" name="idVideo"><br>

            <label for = "titulo">Titulo:</label>
            <input type="text" name="titulo"><br>
            
            <label for = "autor">Autor:</label>
            <input type="text" name="autor"><br>
            
            <label for = "anio">Año:</label>
            <input type="text" name="anio"><br>
            
            <label for = "categoria">Categoria:</label>
            <input type="text" name="categoria"><br>
            
            <label for = "url">Url:</label>
            <textarea id="id" name="url" rows="5"></textarea><br>
            
            <label for = "letra">Letra:</label>
            <textarea id="id" name="letra" rows="5"></textarea><br>
        
            <input type="submit" value="Agregar video">
        </form>
        <a href="index.jsp">Regresar al menú</a>
    </body>
</html>