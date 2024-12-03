<?php

    if(!isset($_SESSION["validarIngreso"])) {

        // La sesión no está iniciada, redirige al inicio de sesión
        header("Location: index.php");
        
        exit; // Asegura que el script se detenga aquí
    }

    // Obtener el rol actual
    $rolActual = isset($_SESSION["rol"]) ? $_SESSION["rol"] : "";

    // Verificar si el rol es 'Policia' y redirigir a una página específica o mostrar un mensaje
    if ($rolActual !== 'Admin') {
        header("Location: index.php?pagina=denegado");
        exit;
    }
?>
<div class="d-flex justify-content-center text-center">

    <form class="p-5 bg-light" method="post">

        <div class="form-group">

            <label for="usuario">Usuario</label>
            <input type="text" class="form-control" id="usuario" name="registroUsuario">

        </div>

        <div class="form-group">

            <label for="pwd">Contraseña</label>
            <input type="password" class="form-control" id="pwd" name="registroPassword">

        </div>

        <div class="form-group">

            <label for="rol">Rol del Usuario</label>
            <select name="registroRol" id="rol" class="form-control custom-select">
                <option selected>Seleccione un rol</option>
                <option value="Admin">Admin</option>
                <option value="Operador">Operador</option>
                <option value="Consulta">Consulta</option>
                <option value="Policia">Policia</option>
            </select>

        </div>

        <?php
        if ($_SERVER["REQUEST_METHOD"] == "POST") {
            // Verifica si los campos obligatorios no están vacíos
            if (
                isset($_POST["registroUsuario"]) &&
                isset($_POST["registroPassword"]) &&
                isset($_POST["registroRol"]) &&
                !empty($_POST["registroUsuario"]) &&
                !empty($_POST["registroPassword"]) &&
                $_POST["registroRol"] != "Seleccione un rol"
            ) {
                // Los campos están completos, procede con el registro en la base de datos
                $registro = ControladorFormularios::ctrRegistro();
        
                if ($registro == "ok") {

                    echo '<script>

                        if (window.history.replaceState) {

                            window.history.replaceState(null, null, window.location.href);
                        }

                    </script>';

                    echo '<div class="alert alert-success">El Usuario ha sido Registrado</div>';
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