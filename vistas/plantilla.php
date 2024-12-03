<?php
    session_set_cookie_params(0);
    session_start();

    $mensajeBienvenida = ControladorFormularios::ctrObtenerMensajeBienvenida();
    $pagina = isset($_GET["pagina"]) ? $_GET["pagina"] : "";
    $rolActual = isset($_SESSION["rol"]) ? $_SESSION["rol"] : "";

?>
<!DOCTYPE html>
<html lang="es">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="icon" href="media/favicon.png" type="image/x-icon">

    <title>SISDAT</title>

    <!-- Pluggins de CSS-->
    <!-- Latest compiled and minified CSS -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/css/bootstrap.min.css">
    <style>

        .no-margin {

            padding-top: 0 !important;
            padding-bottom: 0 !important;
        }

    </style>

    <!-- Pluggins de JS-->
    <!-- jQuery library -->
    <script src="https://cdn.jsdelivr.net/npm/jquery@3.6.4/dist/jquery.slim.min.js"></script>

    <!-- Popper JS -->
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.1/dist/umd/popper.min.js"></script>

    <!-- Latest compiled JavaScript -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.2/dist/js/bootstrap.bundle.min.js"></script>

    <!--Latest compiled Google Charts -->
    <script type="text/javascript" src="https://www.gstatic.com/charts/loader.js"></script>

    <script src="https://kit.fontawesome.com/2d20f2d0ce.js" crossorigin="anonymous"></script>
    


</head>
<body>
    <!-- Logo -->
    <?php if ($pagina !== "aval"): ?>
        <div class="container-fluid aval">
            <h3 class="text-center py-3 logo"><img src="media/MOVILIDAD-LOGO.png" alt="Logo de la página" class="img-fluid" style="padding-top: 10px; height: 93px">
                SISDAT <img src="media/logoQR.jpg" alt="Logo QR" class="img-fluid" style="height:93px;"></h3>
        </div>
        

        <!--BOTONERA -->
        <div class="container-fluid bg-light">

            <div class="container">

                <div class="mensaje-bienvenida text-right" >

                    <?php echo $mensajeBienvenida; ?>

                </div>

                <?php if ($pagina !== "certificado" && $rolActual !== "Policia"): ?>
                    
                    <?php if (isset($_SESSION["validarIngreso"])): // Condición para ocultar la botonera si el usuario no ha iniciado sesión?>
                    
                        <ul class="nav nav-justified py-2 nav-pills">

                            <?php if (isset($_GET["pagina"])): ?>

                                <?php if ($_GET["pagina"] == "inicio"): ?>

                                    <li class="nav-item">
                                        <a class="nav-link active" href="index.php?pagina=inicio">Inicio</a>
                                    </li>

                                <?php else: ?>

                                    <li class="nav-item">
                                        <a class="nav-link" href="index.php?pagina=inicio">Inicio</a>
                                    </li>

                                <?php endif ?>

                                <?php if ($_GET["pagina"] == "consulta" || $_GET["pagina"] == "consultauni" || $_GET["pagina"] == "consultaorg" || $_GET["pagina"] == "consultausu"): ?>

                                    <li class="nav-item dropdown" id="dropdown">
                                        <a class="nav-link dropdown-toggle active" href="#" id="navbardrop" data-toggle="dropdown" >Consulta</a>
                                        <div class="dropdown-menu">
                                            <a href="index.php?pagina=consulta" class="dropdown-item">QR/Placa</a>
                                            <a href="index.php?pagina=consultaorg" class="dropdown-item">Organizaciones</a>
                                            <a href="index.php?pagina=consultauni" class="dropdown-item">Unidades</a>
                                            <?php if ($rolActual === "Admin"): ?>
                                                <a href="index.php?pagina=consultausu" class="dropdown-item">Usuarios</a>
                                            <?php endif; ?>
                                        </div>
                                    </li>

                                <?php else: ?>

                                    <li class="nav-item dropdown">
                                        <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown" >Consulta</a>
                                        <div class="dropdown-menu">
                                            <a href="index.php?pagina=consulta" class="dropdown-item">QR/Placa</a>
                                            <a href="index.php?pagina=consultaorg" class="dropdown-item">Organizaciones</a>
                                            <a href="index.php?pagina=consultauni" class="dropdown-item">Unidades</a>
                                            <?php if ($rolActual === "Admin"): ?>
                                                <a href="index.php?pagina=consultausu" class="dropdown-item">Usuarios</a>
                                            <?php endif; ?>
                                        </div>
                                    </li>

                                <?php endif ?>

                                <?php if ($_GET["pagina"] == "incidencias"): ?>

                                    <li class="nav-item dropdown">
                                        <a class="nav-link active dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">Incidencias</a>
                                        <div class="dropdown-menu">
                                            <a href="index.php?pagina=incidencias" class="dropdown-item">Reporte</a>
                                            <a href="index.php?pagina=regincidencias" class="dropdown-item">Consulta</a>
                                        </div>
                                    </li>

                                <?php else: ?>

                                    <li class="nav-item dropdown">
                                        <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown">Incidencias</a>
                                        <div class="dropdown-menu">
                                            <a href="index.php?pagina=incidencias" class="dropdown-item">Reporte</a>
                                            <a href="index.php?pagina=regincidencias" class="dropdown-item">Consulta</a>
                                        </div>
                                    </li>

                                <?php endif ?>

                                <?php if ($_GET["pagina"] == "unidades" ||$_GET["pagina"] == "organizaciones" ||$_GET["pagina"] == "usuarios"): ?>

                                    <li class="nav-item dropdown" id="dropdown">
                                        <a class="nav-link dropdown-toggle active" href="#" id="navbardrop" data-toggle="dropdown" >Registro</a>
                                        <div class="dropdown-menu">
                                            <a href="index.php?pagina=organizaciones" class="dropdown-item">Organizaciones</a>
                                            <a href="index.php?pagina=unidades" class="dropdown-item">Unidades</a>
                                            <?php if ($rolActual === "Admin"): ?>
                                                <a href="index.php?pagina=usuarios" class="dropdown-item">Usuarios</a>
                                            <?php endif; ?>
                                        </div>
                                    </li>

                                <?php else: ?>

                                    <li class="nav-item dropdown">
                                        <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown" >Registro</a>
                                        <div class="dropdown-menu">
                                            <a href="index.php?pagina=organizaciones" class="dropdown-item">Organizaciones</a>
                                            <a href="index.php?pagina=unidades" class="dropdown-item">Unidades</a>
                                            <?php if ($rolActual === "Admin"): ?>
                                                <a href="index.php?pagina=usuarios" class="dropdown-item">Usuarios</a>
                                            <?php endif; ?>
                                        </div>
                                    </li>

                                <?php endif ?>

                                <?php if ($_GET["pagina"] == "historial"): ?>

                                    <li class="nav-item">
                                        <a class="nav-link active" href="index.php?pagina=historial">Historial</a>
                                    </li>

                                <?php else: ?>
                                    <li class="nav-item">
                                        <a class="nav-link" href="index.php?pagina=historial">Historial</a>
                                    </li>

                                <?php endif ?>

                                <?php if ($_GET["pagina"] == "salir"): ?>

                                    <li class="nav-item">
                                        <a class="nav-link active" href="index.php?pagina=salir">Salir</a>
                                    </li>

                                <?php else: ?>

                                    <li class="nav-item">
                                        <a class="nav-link" href="index.php?pagina=salir">Salir</a>
                                    </li>

                                <?php endif ?>

                            <?php else: ?>

                                <li class="nav-item">
                                    <a class="nav-link active" href="index.php?pagina=inicio">Inicio</a>
                                </li>

                                <li class="nav-item dropdown">
                                    <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown" >Consulta</a>
                                    <div class="dropdown-menu">
                                        <a href="index.php?pagina=consulta" class="dropdown-item">QR/Placa</a>
                                        <a href="index.php?pagina=consultaorg" class="dropdown-item">Organizaciones</a>
                                        <a href="index.php?pagina=consultauni" class="dropdown-item">Unidades</a>
                                        <?php if ($rolActual === "Admin"): ?>
                                            <a href="index.php?pagina=consultausu" class="dropdown-item">Usuarios</a>
                                        <?php endif; ?>

                                    </div>
                                </li>

                                <li class="nav-item">
                                    <a class="nav-link" href="index.php?pagina=incidencias">Incidencias</a>
                                </li>

                                <li class="nav-item dropdown">
                                    <a class="nav-link dropdown-toggle" href="#" id="navbardrop" data-toggle="dropdown" >Registro</a>
                                    <div class="dropdown-menu">
                                        <a href="index.php?pagina=organizaciones" class="dropdown-item">Organizaciones</a>
                                        <a href="index.php?pagina=unidades" class="dropdown-item">Unidades</a>
                                        <?php if ($rolActual === "Admin"): ?>
                                            <a href="index.php?pagina=usuarios" class="dropdown-item">Usuarios</a>
                                        <?php endif; ?>
                                    </div>
                                </li>

                                <li class="nav-item">
                                    <a class="nav-link" href="index.php?pagina=historial">Historial</a>
                                </li>

                                <li class="nav-item">
                                    <a class="nav-link" href="index.php?pagina=salir">Salir</a>
                                </li>

                            <?php endif ?>

                        </ul>
                    
                    <?php endif; // Aqui muere la condición de la botonera ?>
                
                <?php endif; ?>

                <?php if ($pagina !== "certificado" && $rolActual === "Policia"): ?>

                    <?php if (isset($_SESSION["validarIngreso"])): ?>

                        <ul class="nav nav-justified py-1 nav-pills">

                            <?php if (isset($_GET["pagina"])): ?>

                                <?php if ($_GET["pagina"] == "consulta"): ?>

                                    <li class="nav-item">
                                        <a class="nav-link active" href="index.php?pagina=consulta">Consulta</a>
                                    </li>

                                <?php else: ?>

                                    <li class="nav-item dropdown">
                                        <a class="nav-link" href="index.php?pagina=consulta">Consulta</a>
                                    </li>

                                <?php endif ?>

                                <?php if ($_GET["pagina"] == "incidencias"): ?>

                                    <li class="nav-item">
                                        <a class="nav-link active" href="index.php?pagina=incidencias">Incidencias</a>
                                    </li>

                                <?php else: ?>

                                    <li class="nav-item dropdown">
                                        <a class="nav-link" href="index.php?pagina=incidencias">Incidencias</a>
                                    </li>

                                <?php endif ?>

                                <?php if ($_GET["pagina"] == "salir"): ?>

                                    <li class="nav-item">
                                        <a class="nav-link active" href="index.php?pagina=salir">Salir</a>
                                    </li>

                                <?php else: ?>

                                    <li class="nav-item">
                                        <a class="nav-link" href="index.php?pagina=salir">Salir</a>
                                    </li>

                                <?php endif ?>

                            <?php else: ?>

                                <li class="nav-item">
                                    <a class="nav-link" href="index.php?pagina=consulta">Consulta</a>
                                </li>

                                <li class="nav-item">
                                    <a class="nav-link" href="index.php?pagina=salir">Salir</a>
                                </li>

                            <?php endif ?>

                        </ul>

                    <?php endif; ?>

                <?php endif; ?>

            
            </div>

        </div>
    <?php endif; ?>

    <!--White List -->
    <div class="container-fluid py-5">

        <div class="container" >

            <?php

            if (isset($_GET["pagina"])) {

                if ($_GET["pagina"] == "inicio" ||
                
                    $_GET["pagina"] == "consultaorg" ||
                    $_GET["pagina"] == "consultauni" ||
                    $_GET["pagina"] == "consultausu" ||
                    $_GET["pagina"] == "organizaciones" ||
                    $_GET["pagina"] == "unidades" ||
                    $_GET["pagina"] == "usuarios" ||
                    $_GET["pagina"] == "historial" ||
                    $_GET["pagina"] == "editar" ||
                    $_GET["pagina"] == "formulario" ||
                    $_GET["pagina"] == "consulta" ||
                    $_GET["pagina"] == "certificado" ||
                    $_GET["pagina"] == "aval" ||
                    $_GET["pagina"] == "denegado" ||
                    $_GET["pagina"] == "incidencias" ||
                    $_GET["pagina"] == "regincidencias" ||
                    $_GET["pagina"] == "salir") {

                    include "paginas/" . $_GET["pagina"] . ".php";

                } else {

                    include "paginas/error404.php";

                }

            } else {

                include "paginas/login.php";

            }

            ?>

        </div>

    </div>
    <script>

        function convertirAMayusculas(input) {
            input.value = input.value.toUpperCase();
        }

        function abrirCertificado(){

            // Obtener certificado del input
            var serial = document.getElementById("qSerial").value;

            // Construye la URL de la página 'certificado' con el valor del serial como parámetro GET
            var urlCertificado = 'index.php?pagina=certificado&qs=' + encodeURIComponent(serial);

            window.open(urlCertificado, 'CertificadoPopup', 'width=750, height=1000');
            
            return false;
        
        }

        function abrirCertificadoP(){

            // Obtener certificado del input
            var serial = document.getElementById("placa").value;

            // Construye la URL de la página 'certificado' con el valor del serial como parámetro GET
            var urlCertificado = 'index.php?pagina=certificado&placa=' + encodeURIComponent(serial);

            window.open(urlCertificado, 'CertificadoPopup', 'width=750, height=1000');

            return false;

        }

        $(document).ready(function() {
            $('tr[data-toggle="modal"]').click(function() {
                var target = $(this).data('target');
                $(target).modal('show');
            });
        });

    </script>

</body>
</html>