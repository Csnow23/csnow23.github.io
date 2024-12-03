<?php
if(!isset($_SESSION["validarIngreso"])) {

    // La sesión no está iniciada, redirige al inicio de sesión
    header("Location: index.php");
    
    exit; // Asegura que el script se detenga aquí
}
?>

<div class="container-fluid justify-content-center text-center bg-light py-3">

    <div class="">
        <h3>Consulta por código</h3>

        <form class="form-inline justify-content-center text-center">
            
            <input type="text" id="qSerial"  placeholder="QR Serial" class="form-control mr-sm-2">
            <button class="btn btn-success" onclick="return abrirCertificado()">Buscar</button>

        </form>
    </div>
    <br>
    <div class="">
        <h3>Consulta por placa</h3>

        <form class="form-inline justify-content-center text-center">
            
            <input type="text" id="placa" oninput="convertirAMayusculas(this)" placeholder="Placa" class="form-control mr-sm-2">
            <button class="btn btn-success" onclick="return abrirCertificadoP()">Buscar</button>

        </form>
    </div>

</div>