<?php

    if(!isset($_SESSION["validarIngreso"])) {

        // La sesión no está iniciada, redirige al inicio de sesión
        header("Location: index.php");
        
        exit; // Asegura que el script se detenga aquí
    }
        
    $organizaciones = ControladorFormularios::ctrSeleccionarOrganizacion();
?>

<!-- <div class="d-flex justify-content-center text-center"> -->
<div class="container-fluid">

    <form class="p-5 bg-light" method="post" enctype="multipart/form-data">

        <div class="row">

            <div class="form-group col-sm-2 ">
                <label for="organizacion">Organización</label>
            </div>
            <div class="col-sm-5">
                <select id="organizacion" name="registroOrganizacion" class="form-control custom-select">
                    <option selected>Seleccione una organización</option>
                    <?php foreach ($organizaciones as $org): ?>
                        <option value="<?php echo $org['id_organizacion']; ?>"><?php echo $org['nombre']; ?></option>
                    <?php endforeach; ?>
                </select>
            </div>
            <div class="form-group col-sm-5 form-inline">
                <label for="nsocio" class="col-sm-2">N° de Socio:</label>
                <input type="text" oninput="convertirAMayusculas(this)" class="form-control col-sm-2" id="nsocio" name="registroNsocio">
            </div>
            
        </div>
        <div class="row">      

                <div class="form-group col-sm-3">
                    <label for="nombrec" class="">Nombre del Conductor:</label>
                    <input type="text" oninput="convertirAMayusculas(this)" class="form-control " id="nombrec" name="registroNombrec">
                </div>
                <div class="form-group col-sm-3">
                    <label for="cedulac" class="">Cédula:</label>
                    <input type="text"   class="form-control " id="cedulac" name="registroCedulac">
                </div>
                <div class="form-group col-sm-4">
                        <label for="fotoc" class="">Foto del Conductor:</label>
                        <input type="file" class="form-control-file border" id="fotoc" name="registroFotoc" accept="image/*">
                </div>
        </div>
        <div class="row">      

                <div class="form-group col-sm-4">
                    <label for="nombrea" class="">Nombre del Avance:</label>
                    <input type="text" oninput="convertirAMayusculas(this)" class="form-control " id="nombrea" name="registroNombrea">
                </div>
                <div class="form-group col-sm-4">
                    <label for="cedulaa" class="">Cédula:</label>
                    <input type="text"  class="form-control " id="cedulaa" name="registroCedulaa">
                </div>
                <div class="form-group col-sm-4">
                        <label for="fotoa" class="">Foto del Avance:</label>
                        <input type="file" class="form-control-file border" id="fotoa" name="registroFotoa" accept="image/*">
                </div>
        </div>
        <div class="row">

            <div class="form-group col-sm-2">
                <label for="marca">Marca:</label>
                <input type="text" oninput="convertirAMayusculas(this)" class="form-control" id="marca" name="registroMarca">
            </div>
            <div class="form-group col-sm-3">
                <label for="modelo">Modelo:</label>
                <input type="text" oninput="convertirAMayusculas(this)" class="form-control" id="modelo" name="registroModelo">
            </div>
            <div class="form-group col-sm-2">
                <label for="year">Año:</label>
                <input type="number" min="1950" max="2050" step="1" class="form-control" id="year" name="registroYear">
            </div>
            <div class="form-group col-sm-2">
                <label for="placa">Placa:</label>
                <input type="text" oninput="convertirAMayusculas(this)" class="form-control" id="placa" name="registroPlaca">
            </div>
            <div class="form-group col-sm-3">
                <label for="color">Color:</label>
                <input type="text" oninput="convertirAMayusculas(this)" class="form-control" id="color" name="registroColor">
            </div>

        </div>

        <div class="row">

            <div class="col-sm-4">
                <label for="rcv">RCV:</label>
                <input type="date" class="form-control" id="rcv" name="registroRcv">
            </div>
            <div class="col-sm-4">
                <label for="rcvv">Fecha de Vencimiento</label>
                <input type="date" class="form-control" id="rcvv" name="registroRcvv">
            </div>

        </div>

        <?php
        
            // Verifica si se ha enviado el formulario
            if ($_SERVER["REQUEST_METHOD"] == "POST") {
                // Verifica si los campos obligatorios no están vacíos
                if (
                    isset($_POST["registroOrganizacion"]) &&
                    isset($_POST["registroNsocio"]) &&
                    isset($_POST["registroNombrec"]) &&
                    isset($_POST["registroCedulac"]) &&
                    isset($_FILES["registroFotoc"]["tmp_name"]) &&
                    !empty($_FILES["registroFotoc"]["tmp_name"]) &&
                    isset($_POST["registroMarca"]) &&
                    isset($_POST["registroModelo"]) &&
                    isset($_POST["registroYear"]) &&
                    isset($_POST["registroPlaca"]) &&
                    isset($_POST["registroColor"]) &&
                    isset($_POST["registroRcv"]) &&
                    isset($_POST["registroRcvv"]) &&
                    !empty($_POST["registroOrganizacion"]) &&
                    !empty($_POST["registroNsocio"]) &&
                    !empty($_POST["registroNombrec"]) &&
                    !empty($_POST["registroCedulac"]) &&
                    !empty($_POST["registroMarca"]) &&
                    !empty($_POST["registroModelo"]) &&
                    !empty($_POST["registroYear"]) &&
                    !empty($_POST["registroPlaca"]) &&
                    !empty($_POST["registroColor"]) &&
                    !empty($_POST["registroRcv"]) &&
                    !empty($_POST["registroRcvv"])
                ) {
                    // Los campos están completos, procede con el registro en la base de datos
                    $registro = ControladorFormularios::ctrRegistro();

                    if ($registro == "ok") {

                        echo '<script>

                            if (window.history.replaceState) {

                                window.history.replaceState(null, null, window.location.href);

                            }

                        </script>';

                        echo '<div class="alert alert-success">El usuario ha sido registrado</div>';
                    }

                } else {
                    
                    // Alguno de los campos obligatorios está vacío
                    echo '<div class="alert alert-danger">Por favor, complete todos los campos obligatorios.</div>';
                }
            }
        ?>

        <div class="row py-3">
            
            <div class="col-sm-5"></div>
            
            <button type="submit" class="btn btn-primary col-sm-2">Registrar</button>

        </div>
        

    </form>

</div>