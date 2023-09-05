<%-- 
Document   : Generos 
Created on : 3/09/2023, 8:58:12 a. m. 
Author     : Gabriela Delgado 
--%> 

<%@page contentType="text/html" pageEncoding="UTF-8"%> 
<!DOCTYPE html> <html> <!DOCTYPE html> 
    <html lang="en"> 
        <head> 
            <meta charset="utf-8"> 
            <title>ROCKOLA - La mejor musica</title> 
            <!-- Fuentes de Google--> 
            <link rel="preconnect" href="https://fonts.gstatic.com"> 
            <link href="https://fonts.googleapis.com/css2?family=Poppins:wght@400;500;600;700&display=swap" rel="stylesheet"> 
            <link href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/5.10.0/css/all.min.css" rel="stylesheet"> 
            <link href="lib/owlcarousel/assets/owl.carousel.min.css" rel="stylesheet"> 
            <link href="lib/tempusdominus/css/tempusdominus-bootstrap-4.min.css" rel="stylesheet" /> 
            <link href="./style.css" rel="stylesheet"> 
        </head> 
        <body> 
            <div class="container-fluid bg-light pt-3 d-none d-lg-block"> 
                <div class="container"> <div class="row"> 
                        <div class="col-lg-6 text-center text-lg-left mb-2 mb-lg-0"> 
                            <div class="d-inline-flex align-items-center"> 
                                <p><i></i>La musica</p> 
                                <p class="text-body px-3">|</p> <p><i></i>Al alcance de tus manos</p> 
                            </div> 
                        </div> 
                        <div class="col-lg-6 text-center text-lg-right"> 
                            <div class="d-inline-flex align-items-center"> 
                                <a href="https://www.youtube.com" class="text-primary pl-3" href=""> 
                                    <i class="fab fa-youtube"></i> </a> 
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
                        </a> <button type="button" class="navbar-toggler" data-toggle="collapse" data-target="#navbarCollapse"> 
                            <span class="navbar-toggler-icon"></span> 
                        </button> 
                        <div class="collapse navbar-collapse justify-content-between px-3" id="navbarCollapse"> 
                            <div class="navbar-nav ml-auto py-0"> 
                                <a href="index.jsp" class="nav-item nav-link active">Inicio</a> 
                                <a href="agregarVideo.jsp" class="nav-item nav-link">Agregar canción</a> 
                                <a href="listarVideo.jsp" class="nav-item nav-link">Escuchar canciones</a> 
                                <a href="Generos.jsp" class="nav-item nav-link">Generos</a>
                                </div> 
                            </div> 
                        </div> 
                    </nav> 
                </div> 
            </div> 

            <!-- Con este div se empieza el carrusel --> 
            <div class="container-fluid p-0"> 
                <div id="header-carousel" class="carousel slide" data-ride="carousel"> 
                    <div class="carousel-inner"> 
                        <div class="carousel-item active"> 
                            <img class="w-100" src="https://www.elcorteingles.es/entradas/blog/wp-content/uploads/2020/12/Tipos-de-m%C3%BAsica-electr%C3%B3nica.jpg" alt="Image"> 
                            <div class="carousel-caption d-flex flex-column align-items-center justify-content-center"> 
                                <div class="p-3" style="max-width: 900px;"> 
                                    <h4 class="text-white text-uppercase mb-md-3">ROCKOLA</h4> 
                                    <h1 class="display-3 text-white mb-md-4">La mejor musica en una Rockola</h1> 
                                    <a href="" class="btn btn-primary py-md-3 px-md-5 mt-2">Ver opciones</a> 
                                </div> 
                            </div> 
                        </div> 
                        <div class="carousel-item"> <img class="w-100" src="https://legismusic.com/wp-content/uploads/2016/09/musica-electronica-sin-copyright-1.jpg" alt="Image"> 
                            <div class="carousel-caption d-flex flex-column align-items-center justify-content-center"> 
                                <div class="p-3" style="max-width: 900px;"> 
                                    <h4 class="text-white text-uppercase mb-md-3">ROCKOLA</h4> 
                                    <h1 class="display-3 text-white mb-md-4">La mejor musica en una Rockola</h1> 
                                    <a href="listarVideo.jsp" class="btn btn-primary py-md-3 px-md-5 mt-2">Ver videos</a> 
                                </div> 
                            </div> 
                        </div> 
                    </div> 
                    <a class="carousel-control-prev" href="#header-carousel" data-slide="prev"> 
                        <div class="btn btn-dark" style="width: 45px; height: 45px;"> 
                            <span class="carousel-control-prev-icon mb-n2"></span> 
                        </div> 
                    </a> 
                    <a class="carousel-control-next" href="#header-carousel" data-slide="next"> 
                        <div class="btn btn-dark" style="width: 45px; height: 45px;"> 
                            <span class="carousel-control-next-icon mb-n2"></span> 
                        </div> 
                    </a> 
                </div> 
            </div> 
            <script src="https://code.jquery.com/jquery-3.4.1.min.js"></script> 
            <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.4.1/js/bootstrap.bundle.min.js">

            </script> <script src="lib/tempusdominus/js/tempusdominus-bootstrap-4.min.js"></script> </body> 
    </html>