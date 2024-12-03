<?php
    $organizaciones = ControladorFormularios::ctrSeleccionarOrganizacion();
    $incidencias = ControladorFormularios::ctrSeleccionarIncidencias();
?>

<div class="container-fluid">

    <form class="p-5 bg-light" method="post">

    <div class="row">
        <div class="form-group col-sm-5 ">
                <label for="organizacion">Organización</label>
            <div class="">
                <select id="organizacion" name="incidenciaOrg" class="form-control custom-select">
                    <option selected>Seleccione una organización</option>
                    <?php foreach ($organizaciones as $org): ?>
                        <option value="<?php echo $org['id_organizacion']; ?>"><?php echo $org['nombre']; ?></option>
                    <?php endforeach; ?>
                </select>
            </div>
        </div>

        <div class="form-group col-sm-3">
            <label for="socio">Unidad</label>
            <input type="text" class="form-control" id="socio" name="incidenciaSocio">
        </div>
    </div> 

        <div class="form-group">
            <label for="location">Locación de la incidencia</label>
            <input type="text" class="form-control" id="location" name="incidenciaLocation">
        </div>

        <div class="form-group">
            <div>
                <label for="">Tipo de incidencia</label>
            </div>
            <div class="form-check">

                <?php foreach ($incidencias as $ici): ?>
                    <div class="form-check-inline">
                        <label for="incidencia" class="form-check-label">
                            <input type="checkbox" id="incidencia" name="incidenciaRepor[]" class="form-check-input" value="<?php echo $ici['id_incidencias'] ?>"><?php echo $ici['nombre'] ?>
                        </label>
                    </div>
                <?php endforeach; ?>

            </div>
            
        </div>
        
        
        <div class="form-group">
            <label for="otros">Observaciones</label>
            <input type="text" class="form-control" id="otros" name="incidenciaOtros">
        </div>

        <input type="hidden" name="incidenciaUsu" value="<?php echo $_SESSION["validarIngreso"]; ?>">

        <?php
            if ($_SERVER["REQUEST_METHOD"] == "POST") {
                // Resto del formulario

                // Verifica si los campos obligatorios no están vacíos
                if (
                    isset($_POST["incidenciaOrg"]) &&
                    isset($_POST["incidenciaSocio"]) &&
                    isset($_POST["incidenciaLocation"]) &&
                    isset($_POST["incidenciaUsu"]) &&
                    isset($_POST["incidenciaOtros"]) &&
                    !empty($_POST["incidenciaOrg"]) &&
                    !empty($_POST["incidenciaSocio"]) &&
                    !empty($_POST["incidenciaLocation"]) &&
                    !empty($_POST["incidenciaUsu"])
                ) {
                    // Los campos están completos, procede con el registro en la base de datos
                    $registro = ControladorFormularios::ctrRegistro();

                    if ($registro == "ok") {
                        echo '<script>
                            if (window.history.replaceState) {
                                window.history.replaceState(null, null, window.location.href);
                            }
                        </script>';
                        echo '<div class="alert alert-success">La incidencia ha sido registrada.</div>';
                    }
                } else {
                    // Alguno de los campos obligatorios está vacío
                    echo '<div class="alert alert-danger">Por favor, complete todos los campos obligatorios.</div>';
                }
            }
        ?>

        <div class="row">
            <div class="col-sm-5"></div>
            <button type="submit" class="btn btn-primary col-sm-2">Reportar</button>
        </div>


    </form>
</div>