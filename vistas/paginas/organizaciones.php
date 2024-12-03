<?php

    if(!isset($_SESSION["validarIngreso"])) {

        // La sesión no está iniciada, redirige al inicio de sesión
        header("Location: index.php");
        
        exit; // Asegura que el script se detenga aquí
    }

?>

<div class="d-flex justify-content-center text-center">

    <form class="p-5 bg-light" method="post">

        <div class="form-group">

            <label for="nameorg">Nombre de Organización</label>
            <input type="text" class="form-control" id="nameorg" name="registroNORG">

        </div>

        <div class="form-group">

            <label for="terminal">Parada Terminal</label>
            <input type="text" class="form-control" id="terminal" name="registroTerminal">

        </div>

        <div class="form-group">

            <label for="tipo">Tipo de Vehículo</label>
            <select name="registroTipo" id="tipo" class="form-control custom-select">
                <option selected>Seleccione un tipo de Vehículo</option>
                <option value="Bus">Bus</option>
                <option value="Taxi">Taxi</option>
                <option value="Moto-Taxi">Moto-Taxi</option>
            </select>

        </div>

        <div class="form-group">

            <label for="fpermiso">Vencimiento del Permiso de Parada</label>
            <input type="date" class="form-control" id="fpermiso" name="registroFPermiso">
        
        </div>

        <div class="form-group">

            <label for="casco">Color de Casco</label>
            <input type="color" class="form-control" id="casco" name="registroCasco">
        
        </div>

        <?php
        
            // Verifica si se ha enviado el formulario
            if ($_SERVER["REQUEST_METHOD"] == "POST") {
                // Verifica si los campos obligatorios no están vacíos
                if (
                    isset($_POST["registroNORG"]) &&
                    isset($_POST["registroTerminal"]) &&
                    isset($_POST["registroTipo"]) &&
                    isset($_POST["registroCasco"]) &&
                    isset($_POST["registroFPermiso"]) &&
                    !empty($_POST["registroNORG"]) &&
                    !empty($_POST["registroTerminal"]) &&
                    !empty($_POST["registroCasco"]) &&
                    $_POST["registroTipo"] != "Seleccione un tipo de Vehículo"
                ) {
                    // Los campos están completos, procede con el registro en la base de datos
                    $registro = ControladorFormularios::ctrRegistro();

                    if ($registro == "ok") {
                        echo '<script>

                            if (window.history.replaceState) {

                                window.history.replaceState(null, null, window.location.href);

                            }

                        </script>';

                        echo '<div class="alert alert-success">La Organización ha sido Registrada</div>';

                    }

                } else {
                    // Alguno de los campos obligatorios está vacío
                    echo '<div class="alert alert-danger">Por favor, complete todos los campos obligatorios.</div>';
                }
            }

        ?>

        <div class="py-3">
            
            <button type="submit" class="btn btn-primary">Registrar</button>

        </div>

    </form>

</div>