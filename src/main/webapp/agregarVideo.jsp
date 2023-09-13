<%-- 
    Document   : agregarVideo
    Created on : 2/09/2023, 5:24:35 p. m.
    Author     : Gabriela Delgado
--%>

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
                            <a href="agregarVideo.jsp" class="nav-item nav-link active">Agregar video</a> 
                            <a href="listarVideo.jsp" class="nav-item nav-link">Ver videos</a> 
                            <a href="Generos.jsp" class="nav-item nav-link">Generos</a>
                        </div>
                    </div>
                </nav>
            </div>
        </div>

        <div class="container-fluid page-header">
            <div class="container">
                <div class="d-flex flex-column align-items-center justify-content-center" style="min-height: 400px">
                    <h3 class="display-4 text-white text-uppercase">Agregar canción</h3>
                    <div class="d-inline-flex text-white">
                        <p class="m-0 text-uppercase"><a class="text-white" href="">Inicio</a></p>
                        <i class="fa fa-angle-double-right pt-1 px-3"></i>
                        <p class="m-0 text-uppercase">Agregar canción</p>
                    </div>
                </div>
            </div>
        </div>

        <form action ="SvVideo" method = "POST">
            <div class="container-fluid booking mt-5 pb-5">
                <div class="container pb-5">
                    <div class="bg-light shadow" style="padding: 30px;">
                        <div class="row align-items-center" style="min-height: 60px;">
                            <div class="col-md-10">
                                <div class="row">
                                    <!-- Cajas de texto donde se añadira toda la información del video agregado -->
                                    <div class="col-md-3">
                                        <div>
                                            <!-- Recibe los datos que digite el usuario con relación al id del video -->
                                            <input type="text" class="form-control p-4" name="idVideo" id="idVideo" placeholder="Id video"
                                                   required="required" data-validation-required-message="Porfavor escriba el id de la canción" />
                                            <p class="help-block text-danger"></p>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div>
                                            <!-- Recibe los datos que digite el usuario con relación al título del video -->
                                            <input type="text" class="form-control p-4" name="titulo" id="titulo" placeholder="Titulo"
                                                   required="required" data-validation-required-message="Porfavor escriba el titulo de la canción" />
                                            <p class="help-block text-danger"></p>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div>
                                            <!-- Recibe los datos que digite el usuario con relación al autor del video -->
                                            <input type="text" class="form-control p-4" name="autor" id="autor" placeholder="Autor"
                                                   required="required" data-validation-required-message="Porfavor escriba el autor de la canción" />
                                            <p class="help-block text-danger"></p>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div class="mb-3 mb-md-0">
                                            <!-- Recibe los datos que digite el usuario con relación al año de publicación del video -->
                                            <div class="date" name="anio" id="anio" data-target-input="nearest">
                                                <input type="text" class="form-control p-4 datetimepicker-input" name="anio" placeholder="Año" data-target="#date1" data-toggle="datetimepicker"/>
                                            </div>
                                        </div>
                                    </div>
                                    <!-- Menú desplegable para que cuando se agregue un video se pueda elegir la categoria de este  -->
                                    <div class="col-md-3">
                                        <div class="mb-3 mb-md-0">
                                            <select class="custom-select px-4" name="categoria" id="categoria" style="height: 47px;">
                                                <option selected>Categoria</option>
                                                <option value="Rock">Rock</option>
                                                <option value="Pop">Pop</option>
                                                <option value="Salsa">Salsa</option>
                                                <option value="Electronica">Electronica</option>
                                            </select>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div>
                                            <!-- Recibe los datos que digite el usuario con relación a la url del video -->
                                            <textarea type="text" class="form-control p-4" name="url" id="url" placeholder="URL"
                                                      required="required" data-validation-required-message="Porfavor escriba la URL de la canción"></textarea>
                                            <p class="help-block text-danger"></p>
                                        </div>
                                    </div>
                                    <div class="col-md-3">
                                        <div>
                                            <!-- Recibe los datos que digite el usuario con relación a la letra del video -->
                                            <textarea type="text" class="form-control p-4" name="letra" id="letra" placeholder="Letra"
                                                      required="required" data-validation-required-message="Porfavor escriba la letra de la canción"></textarea>
                                            <p class="help-block text-danger"></p>
                                        </div>
                                    </div>
                                </div>
                            </div>
                            <div class="col-md-2">
                                <!-- Botón que culmina la tarea de agregar el video -->
                                <button class="btn btn-primary btn-block" type="submit" style="height: 47px; margin-top: -2px;">Agregar</button>
                                <a href='index.jsp' class="btn btn-primary btn-block" type="submit" style="height: 47px; margin-top: 20px;">Regresar</a>
                            </div>
                        </div>
                    </div>
                </div>
            </div>
        </form>
    </body>
</html>