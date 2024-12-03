<?php

    if (!isset($_SESSION["validarIngreso"])) {
        // La sesión no está iniciada, redirige al inicio de sesión
        header("Location: index.php");
        exit; // Asegura que el script se detenga aquí
    }

    if (isset($_GET["qs"])) {
        $item = "qs";
        $valor = $_GET["qs"];
        $unidad = ControladorFormularios::ctrSeleccionarRegistros($item, $valor);

    }elseif (isset($_GET["placa"])) {
        $item = "placa";
        $valor = $_GET["placa"];
        $unidad = ControladorFormularios::ctrSeleccionarRegistros($item, $valor);
    }

    // Verificar si no se encontró coincidencia
    if (empty($unidad)) {
        echo '<div class="container text-center">
                <h4>No se encuentra QR Asignado</h4>
              </div>';
        exit; // Asegura que el script se detenga aquí
    }

    $fechaRcvv = $unidad['rcvv'];
    $fechaFpermiso = $unidad['permiso'];
    $fhActual = date("Y-m-d");

    if ($fhActual >= $fechaRcvv || $fhActual >= $fechaFpermiso) {
        $status = "No Apto";
        $color = "red";

    } else {
        $status = "Apto";
        $color = "green";
    }

    if($fhActual >= $fechaRcvv){

        $color2 = "red";
        $bold = "bold";
    } else {
        $color2 = "";
        $bold = "";
        
    }

    if($fhActual >= $fechaFpermiso){

        $color2 = "red";
        $bold = "bold";
    } else {
        $color2 = "";
        $bold = "";
        
    }

    $socio = $unidad['nsocio'];
    $org = $unidad['id_organizacion'];

    $incidencias = ModeloFormularios::mdlObtenerRegIncidencias($socio, $org);
    $organizaciones = ControladorFormularios::ctrSeleccionarOrganizacion();
?>

<div class="container no-margin">
    <div class="row">
        <div class="col-sm-12">
            <h4 class="text-center">Detalles de la Unidad</h4>
        </div>
    </div>

    <div class="row">
        <div class="col-sm-6">
            <div class="form-group">
                <?php echo "Esta unidad está <span style='color: $color; font-weight: bold';> $status </span> para circular por el municipio." ?>
            </div>
        </div>
        <div class="col-sm-6">
            <div class="form-group">
                <label for="nsocio">N° de Socio:</label>
                <?php echo $unidad["nsocio"] ?>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-sm-3">
            <div class="form-group">
                <label for="nombrec">Nombre del Conductor:</label>
                <?php echo $unidad["nombrec"] ?>
            </div>
        </div>
        <div class="col-sm-3">
            <div class="form-group">
                <label for="cedulac">Cédula:</label>
                <?php echo $unidad["cedulac"] ?>
            </div>
        </div>
        <div class="col-sm-3">
            <div class="form-group">
                <label for="fotoc">Foto del Conductor:</label>
            </div>
        </div>
        <div class="col-sm-3">
            <div class="form-group">
                <img src="<?php echo $unidad["fotoc"] ?>" alt="" style="max-width: 100px; max-height: 120px;">
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-sm-3">
            <div class="form-group">
                <label for="nombrea">Nombre del Avance:</label>
                <?php echo $unidad["nombrea"] ?>
            </div>
        </div>
        <div class="col-sm-3">
            <div class="form-group">
                <label for="cedulaa">Cédula:</label>
                <?php echo $unidad["cedulaa"] ?>
            </div>
        </div>
        <div class="col-sm-3">
            <div class="form-group">
                <label for="fotoa">Foto del Avance:</label>
            </div>
        </div>
        <div class="col-sm-3">
            <div class="form-group">
                <img src="<?php echo $unidad["fotoa"] ?>" alt="" style="max-width: 100px; max-height: 120px;">
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-sm-3">
            <div class= "form-group">
                <label for="marca">Marca:</label>
                <?php echo $unidad["marca"] ?>
            </div>
        </div>
        <div class="col-sm-3">
            <div class="form-group">
                <label for="modelo">Modelo:</label>
                <?php echo $unidad["modelo"] ?>
            </div>
        </div>
        <div class="col-sm-2">
            <div class="form-group">
                <label for="year">Año:</label>
                <?php echo $unidad["year"] ?>
            </div>
        </div>
        <div class="col-sm-2">
            <div class="form-group">
                <label for="placa">Placa:</label>
                <?php echo $unidad["placa"] ?>
            </div>
        </div>
        <div class="col-sm-2">
            <div class="form-group">
                <label for="color">Color:</label>
                <?php echo $unidad["color"] ?>
            </div>
        </div>
    </div>

    <div class="row">
        <div class="col-sm-4">
            <div class="form-group">
                <label for="rcv">RCV:</label>
                <?php echo $unidad["rcv"] ?>
            </div>
        </div>
        <div class="col-sm-4">
            <div class="form-group">
                <?php echo "<span style='color: $color2; font-weight: $bold;';> Vencimiento RCV </span>" ?>
                <?php echo $unidad["rcvv"] ?>
            </div>
        </div>
        <div class="col-sm-4">
            <div class="form-group">
                <?php echo "<span style='color: $color2; font-weight: $bold;';> Permiso Terminal </span>" ?>
                <?php echo $unidad["permiso"] ?>
            </div>
        </div>
    </div>
</div>

<?php if (!empty($incidencias)): ?>
    <div class="container">
        <!-- Sección Desplegable -->
        <div class="accordion" id="accordionExample">
            <div class="card">
                <div class="card-header" id="headingOne">
                    <h2 class="mb-0">
                        <button class="btn btn-link" type="button" data-toggle="collapse" data-target="#collapseOne" aria-expanded="true" aria-controls="collapseOne">
                            Ver Detalles de Incidencias
                        </button>
                    </h2>
                </div>

                <div id="collapseOne" class="collapse" aria-labelledby="headingOne" data-parent="#accordionExample">
                    <div class="card-body">
                        <!-- Contenido de la sección desplegable -->

                        <div class="table-responsive">
                            <table class="table table-striped table-sm">
                                <!-- Encabezado de la tabla -->
                                <thead class="thead-dark">
                                    <tr>
                                        <th>#</th>
                                        <th>Fiscal</th>
                                        <th>Fecha y Hora</th>
                                        <th>Incidencia</th>
                                        <th>Observaciones</th>
                                    </tr>
                                </thead>
                                <tbody>
                                    <?php
                                    foreach ($incidencias as $key => $value):
                                        $idIncidencia = $value['incidencia'];
                                        $nomInci = ModeloFormularios::mdlNomObtenerIncidencias($idIncidencia);

                                        $fechaHoraBD = $value['fecha'];
                                        $dateTimeBD = new DateTime($fechaHoraBD, new DateTimeZone('UTC'));
                                        $dateTimeBD->setTimezone(new DateTimeZone('America/Caracas'));
                                        $fechaHoraConvertida = $dateTimeBD->format('H:i d-m-Y');
                                    ?>
                                        <tr>
                                            <td><?php echo ($key + 1); ?></td>
                                            <td><?php echo $value['usuario']; ?></td>
                                            <td><?php echo $fechaHoraConvertida; ?></td>
                                            <td><?php echo $nomInci; ?></td>
                                            <td><?php echo $value['observaciones']; ?></td>
                                        </tr>
                                    <?php endforeach; ?>
                                </tbody>
                            </table>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
<?php endif; ?>