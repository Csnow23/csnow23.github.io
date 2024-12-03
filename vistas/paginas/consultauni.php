<?php
if (!isset($_SESSION["validarIngreso"])) {
    // La sesión no está iniciada, redirige al inicio de sesión
    header("Location: index.php");
    exit; // Asegura que el script se detenga aquí
}

$organizaciones = ControladorFormularios::ctrSeleccionarOrganizacion();
$usuarios = ControladorFormularios::ctrSeleccionarRegistros(null, null);

$organizacionSeleccionada = isset($_GET["organizacion"]) ? $_GET["organizacion"] : null;

if (isset($_GET["borrar_filtro"])) {
    $registrosFiltrados = $usuarios;
} elseif (isset($_GET["organizacion"])) {
    $idOrganizacionSeleccionada = $_GET["organizacion"];
    $registrosFiltrados = ControladorFormularios::ctrFiltrarRegistrosPorOrganizacion($idOrganizacionSeleccionada);
} else {
    // Si no se ha enviado el formulario, muestra todos los registros
    $registrosFiltrados = $usuarios;
}
?>

<div class="container-fluid bg-light">
    <div class="form-group col-sm-2 ">
        <label for="organizacion">Organización</label>
    </div>
    <div class="col-sm-5">
        <form method="get">
            <input type="hidden" name="pagina" value="consultauni">
            <select id="organizacion" name="organizacion" class="custom-select">
                <option value="">Seleccione una organización</option>
                <?php foreach ($organizaciones as $org): ?>
                    <option value="<?php echo $org['id_organizacion']; ?>" <?php if ($org['id_organizacion'] == $organizacionSeleccionada) echo 'selected'; ?>>
                        <?php echo $org['nombre']; ?>
                    </option>
                <?php endforeach; ?>
            </select>
            <!-- Asegúrate de incluir el parámetro "pagina" en la URL -->
            <button type="submit" class="btn btn-primary mt-2 mb-2 mr-sm-2">Seleccionar</button>
            <a href="index.php?pagina=consultauni" class="btn btn-secondary mt-2 mb-2">Borrar filtro</a>
        </form>
    </div>
</div>

<!-- Tabla de registros -->
<div class="container">
    <table class="table table-bordered table-sm table-responsive table-hover">
        <thead class="thead-dark">
            <tr>
                <th>#</th>
                <th>Socio</th>
                <th>QR Serial</th>
                <th>Dueño</th>
                <th>Cedula</th>
                <th>Avance</th>
                <th>Cedula</th>
                <th>Marca</th>
                <th>Modelo</th>
                <th>Placa</th>
                <th>Año</th>
                <th>Color</th>
                <th>RCV Emision</th>
                <th>RCV Vencimiento</th>
                <th>Permiso Terminal</th>
            </tr>
        </thead>

        <tbody>
            <?php
            $maxPaginasMostradas = 10; // 
            $pasoAvance = 5;
            $registrosPorPagina = 10;
            $totalRegistros = count($registrosFiltrados);
            $totalPaginas = ceil($totalRegistros / $registrosPorPagina);
            $paginaActual = isset($_GET['page']) ? intval($_GET['page']) : 1;
            $inicio = ($paginaActual - 1) * $registrosPorPagina;
            $fin = $inicio + $registrosPorPagina;
            $registrosMostrados = array_slice($registrosFiltrados, $inicio, $registrosPorPagina);

            foreach ($registrosMostrados as $key => $value): 
                $paginaGlobal = ($paginaActual - 1) * $registrosPorPagina + $key + 1;
                $fechaRcvv = $value['rcvv'];
                $fechaFpermiso = $value['permiso'];
                $fhActual = date("Y-m-d");
                if ($fhActual >= $fechaRcvv || $fhActual >= $fechaFpermiso) {
                    $status = "No Apto";
                    $color = "table-danger";
                } else {
                    $status = "Apto";
                    $color = "";
                }
            ?>
                <tr data-toggle="modal" data-target="#modal<?php echo $value["id"]; ?>" class="<?php echo $color; ?> ">
                    <td><?php echo $paginaGlobal; ?></td>
                    <td><?php echo $value["nsocio"]; ?></td>
                    <td><?php echo isset($value["qs"]) ? $value["qs"] : "Sin asignar"; ?></td>
                    <td><?php echo $value["nombrec"]; ?></td>
                    <td><?php echo $value["cedulac"]; ?></td>
                    <td><?php echo $value["nombrea"]; ?></td>
                    <td><?php echo $value["cedulaa"]; ?></td>
                    <td><?php echo $value["marca"]; ?></td>
                    <td><?php echo $value["modelo"]; ?></td>
                    <td><?php echo $value["placa"]; ?></td>
                    <td><?php echo $value["year"]; ?></td>
                    <td><?php echo $value["color"]; ?></td>
                    <td><?php echo $value["rcv"]; ?></td>
                    <td><?php echo $value["rcvv"]; ?></td>
                    <td><?php echo $value["permiso"]; ?></td>
                </tr>
            <?php endforeach; ?>
        </tbody>
    </table>
</div>
<!-- Modal -->
<?php foreach ($registrosMostrados as $key => $value): ?>
    <div class="modal fade" id="modal<?php echo $value["id"]; ?>" tabindex="-1" role="dialog" aria-labelledby="modalTitle<?php echo $value["id"]; ?>" aria-hidden="true">
        <div class="modal-dialog" role="document">
            <div class="modal-content">
                <div class="modal-header">
                    <h5 class="modal-title" id="modalTitle<?php echo $value["id"]; ?>"><?php echo "Info. De registro N° de Socio: ".$value["nsocio"]; ?></h5>
                    <button type="button" class="close" data-dismiss="modal" aria-label="Close">
                        <span aria-hidden="true">&times;</span>
                    </button>
                </div>
                <div class="modal-body">
                    <!-- Agrega aquí la información adicional que deseas mostrar -->
                    <p><strong>Serial código QR: </strong>
                        <?php if (!empty($value["qs"])) {
                            echo $value["qs"];
                        } else {
                            echo "Sin asignar";
                        } ?>
                    </p>
                    <div class="d-flex justify-content-around btn-group">
                        <a href="index.php?pagina=editar&formulario=Uni&id=<?php echo $value["id"]; ?>" class="btn btn-warning">
                            <i class="fas fa-pencil-alt"></i>
                        </a>
                        <button class="btn btn-danger">
                            <i class="fas fa-trash-alt"></i>
                        </button>
                        <a href="index.php?pagina=certificado&qs=<?php echo $value["qs"]; ?>" class="btn btn-success">
                            QR
                        </a>
                    </div>
                </div>
                <div class="modal-footer">
                    <button type="button" class="btn btn-secondary" data-dismiss="modal">Cerrar</button>
                    <!-- Agrega más botones si es necesario -->
                </div>
            </div>
        </div>
    </div>
<?php endforeach; ?>
<div class="container">

    <nav aria-label="Page navigation">
        <ul class="pagination justify-content-center">
            <?php
                $mitadMaxPaginas = floor($maxPaginasMostradas / 2);
                $startPage = max(1, $paginaActual - $mitadMaxPaginas);
                $endPage = min($totalPaginas, $startPage + $maxPaginasMostradas - 1);

                // Ajustar $endPage si estamos cerca del final
                if ($endPage - $startPage < $maxPaginasMostradas - 1) {
                    $endPage = min($totalPaginas, $endPage + ($maxPaginasMostradas - 1 - ($endPage - $startPage)));
                }

                $paginaRetroceso = $paginaActual - $pasoAvance;
                $paginaRetroceso = max(1, $paginaRetroceso);

                $paginaAvance = $paginaActual + $pasoAvance;
                $paginaAvance = min($totalPaginas, $paginaAvance);

                $paginaSiguiente = $paginaActual + 1;
                $paginaSiguiente = min($totalPaginas, $paginaSiguiente);

                $paginaAnterior = $paginaActual - 1;
                $paginaAnterior = max(1, $paginaAnterior);

                if ($paginaActual > 1) {
                    echo '<li class="page-item">';
                    echo '<a class="page-link" href="index.php?pagina=consultauni&organizacion=' . $organizacionSeleccionada . '&page=' . $paginaAnterior .'" aria-label="Previous">';
                    echo '<span aria-hidden="true">&laquo;</span>';
                    echo '</a>';
                    echo '</li>';
                }

                if ($paginaActual > $pasoAvance) {
                    echo '<li class="page-item">';
                    echo '<a class="page-link" href="index.php?pagina=consultauni&organizacion=' . $organizacionSeleccionada . '&page=' . $paginaRetroceso . '">-5</a>';
                    echo '</li>';
                }

                for ($i = $startPage; $i <= $endPage; $i++) {
                    $active = $i === $paginaActual ? 'active' : '';
                    echo '<li class="page-item ' . $active . '">';
                    echo '<a class="page-link" href="index.php?pagina=consultauni&organizacion=' . $organizacionSeleccionada . '&page=' . $i . '">' . $i . '</a>';
                    echo '</li>';
                }

                if ($paginaActual < $totalPaginas - $pasoAvance + 1) {
                    echo '<li class="page-item">';
                    echo '<a class="page-link" href="index.php?pagina=consultauni&organizacion=' . $organizacionSeleccionada . '&page=' . $paginaAvance . '">+5</a>';
                    echo '</li>';
                }

                if ($paginaActual < $totalPaginas) {
                    echo '<li class="page-item">';
                    echo '<a class="page-link" href="index.php?pagina=consultauni&organizacion=' . $organizacionSeleccionada . '&page=' . $paginaSiguiente . '" aria-label="Next">';
                    echo '<span aria-hidden="true">&raquo;</span>';
                    echo '</a>';
                    echo '</li>';
                }
            ?>
        </ul>
    </nav>
</div>