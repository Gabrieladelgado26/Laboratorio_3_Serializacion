<%-- 
    Document   : Generos
    Created on : 4/09/2023, 8:58:12 a. m.
    Author     : Gabriela Delgado
--%>

<%@page import="com.mycompany.mundo.Archivos"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.mycompany.mundo.Video"%>
<%@page import="com.mycompany.mundo.Archivos"%>
<%@page import="java.io.File"%>
<%@page import="java.util.ArrayList"%>
<%@page import="com.mycompany.mundo.Video"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html lang="en">

    <head>
        <meta charset="utf-8">
        <title>ROCKOLA</title>
        <meta content="width=device-width, initial-scale=1.0" name="viewport">
        <meta content="Free HTML Templates" name="keywords">
        <meta content="Free HTML Templates" name="description">

        <!-- Google Web Fonts -->
        <link rel="preconnect" href="https://fonts.gstatic.com">
        <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600;700&display=swap" rel="stylesheet"> 

        <!-- Font Awesome -->
        <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet">

        <!-- Libraries Stylesheet -->
        <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet">
        <link href="lib/tempusdominus/css/tempusdominus-bootstrap-4.min.css" rel="stylesheet" />

        <!-- Customized Bootstrap Stylesheet -->
        <link href="./style.css" rel="stylesheet">
    </head>

    <body>
        <div class="container-fluid bg-light pt-3 d-none d-lg-block">
            <div class="container">
                <div class="row">
                    <div class="col-lg-6 text-center text-lg-left mb-2 mb-lg-0">
                        <div class="d-inline-flex align-items-center">
                            <p><i></i>La musica</p>
                            <p class="text-body px-3">|</p>
                            <p><i></i>al alcance de tus manos </p>
                        </div>
                    </div>
                    <div class="col-lg-6 text-center text-lg-right">
                        <div class="d-inline-flex align-items-center">
                            <a class="text-primary pl-3" href="">
                                <i class="fab fa-youtube"></i>
                            </a>
                        </div>
                    </div>
                </div>
            </div>
        </div>

        <div class="container-fluid position-relative nav-bar p-0">
            <div class="container-lg position-relative p-0 px-lg-3" style="z-index: 9;">
                <nav class="navbar navbar-expand-lg bg-light navbar-light shadow-lg py-3 py-lg-0 pl-3 pl-lg-5">
                    <a href="" class="navbar-brand">
                        <h1 class="m-0 text-primary"><span class="text-dark">ROCK</span>OLA</h1>
                    </a>
                    <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navbarCollapse">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse justify-content-between px-3" id="navbarCollapse">
                        <div class="navbar-nav ml-auto py-0">
                            <!-- Enlaces del menú superior que dirigen a las paginas inico, agregar canción, ver videos ogeneros -->
                            <a href="index.jsp" class="nav-item nav-link">Inicio</a> 
                            <a href="agregarVideo.jsp" class="nav-item nav-link">Agregar video</a> 
                            <a href="listarVideo.jsp" class="nav-item nav-link">Ver videos</a> 
                            <a href="Generos.jsp" class="nav-item nav-link active">Generos</a>
                        </div>
                    </div>
                </nav>
            </div>
        </div>

        <div class="container-fluid page-header">
            <div class="container">
                <div class="d-flex flex-column align-items-center justify-content-center" style="min-height: 400px">
                    <h3 class="display-4 text-white text-uppercase">Generos</h3>
                    <div class="d-inline-flex text-white">
                        <p class="m-0 text-uppercase"><a class="text-white" href="">Inicio</a></p>
                        <i class="fa fa-angle-double-right pt-1 px-3"></i>
                        <p class="m-0 text-uppercase">Generos</p>
                    </div>
                </div>
            </div>
        </div>

        <form action ="SvVideo" method = "get">
            <div class="container-fluid booking mt-5 pb-5">
                <div class="container pb-5">
                    <div class="bg-light shadow" style="padding: 30px;">
                        <div class="row align-items-center" style="min-height: 60px;">
                            <div class="col-md-7">
                                <div class="row">
                                    <div class="col-md-8">
                                        <div class="mb-5 mb-md-0">
                                            <center>
                                                <select class="custom-select px-4" name="categoria" id="categoria" style="height: 47px;">
                                                    <option selected>Categoria</option>
                                                    <option value="Rock">Rock</option>
                                                    <option value="Pop">Pop</option>
                                                    <option value="Salsa">Salsa</option>
                                                    <option value="Electronica">Electronica</option>
                                                </select>
                                            </center>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-2">
                                <center>
                                    <button class="btn btn-primary btn-block" type="submit" style="height: 47px; margin-top: -2px;">Buscar</button>
                                    <a href='index.jsp' class="btn btn-primary btn-block" type="submit" style="height: 47px; margin-top: 20px;">Regresar</a>
                                </center>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </form>
        <div class="container-fluid py-5">
            <div class="container pt-5 pb-3">
                <div class="text-center mb-3 pb-3">
                    <h6 class="text-primary text-uppercase" style="letter-spacing: 5px;">Todas las canciones de tu genero favorito</h6>
                    <h1>Canciones</h1>
                </div>
                <div class="row">
                    <%
                        // LLamado al metodo leerArchivo de tipo ArrayList<Video> de la clase Archivos para mostrar los videos agregados en un listado de videos
                        ArrayList<Video> misVideos = Archivos.leerArchivo();
                        
                        // Atributo categoria de tipo String
                        String categoria;

                        // Condicional if que evalua la categoria que escogio el usuario en caso de que este no sea nulo
                        if (request.getAttribute("categoria") != null) {
                            categoria = request.getAttribute("categoria").toString();
                        } else {
                            categoria = "";
                        }

                        // Itera en un ciclo forEach en el ArrayList misVideos donde estan todos los videos agregados
                        for (Video v : misVideos) {
                            // Condicional if que mustra unicamente los videos que coincidan con la categoria que digito el usuario
                            if ((categoria.equals(v.getCategoria())) || (categoria.equals(""))) {
                                out.println("<div class=´'col-lg-4 col-md-6 mb-4' style='margin-right: 30px;'>");
                                out.println("<div class='service-item bg-white text-center mb-2 py-5 px-4'>");
                                out.println("<iframe width='300' height='169' src='https://www.youtube.com/embed/" + v.getUrl().replace("https://www.youtube.com/watch?v=", "") + "' title='YouTube video player' frameborder='0' allow='accelerometer; autoplay; clipboard-write; encrypted-media; gyroscope; picture-in-picture; web-share' allowfullscreen></iframe>");
                                out.println("<p class='m-0'>idVideo: " + v.getIdVideo() + "</p>");
                                out.println("<h5 class='mb-2'>" + v.getTitulo() + "</h5>");
                                out.println("<p class='m-0'>Autor: " + v.getAutor() + "</p>");
                                out.println("<p class='m-0'>Año: " + v.getAnio() + "</p>");
                                out.println("<p class='m-0'>Categoria: " + v.getCategoria() + "</p>");
                                out.println("<p class='m-0'>Letra: " + v.getLetra() + "</p>");

                                out.println("<a href='" + v.getUrl() + "' target='_blank' class='btn btn-primary py-md-3 px-md-5 mt-2'>Ir al video</a>");
                                out.println("</div>");
                                out.println("</div>");
                            }
                        }
                    %>

                </div>
            </div>
        </div>
    <center>
        <a href='index.jsp' class='btn btn-primary py-md-3 px-md-5 mt-2'style="min-height: 60px" style='margin-right: 30px;'>Regresar</a>
        <a href='agregarVideo.jsp' class='btn btn-primary py-md-3 px-md-5 mt-2' style="min-height: 60px">Agregar video</a>
    </center>
</body>
</html>