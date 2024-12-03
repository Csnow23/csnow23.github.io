<?php
if (!isset($_SESSION["validarIngreso"])) {
    // La sesión no está iniciada, redirige al inicio de sesión
    header("Location: index.php");
    exit; // Asegura que el script se detenga aquí
}

$regIncidencias = ModeloFormularios::mdlObtenerRegIncidencias(null, null);


// Código de paginación
$registrosPorPagina = 10;
$totalRegistros = count($regIncidencias);
$totalPaginas = ceil($totalRegistros / $registrosPorPagina);
$paginaActual = isset($_GET['page']) ? intval($_GET['page']) : 1;
$inicio = ($paginaActual - 1) * $registrosPorPagina;
$fin = $inicio + $registrosPorPagina;
$registrosMostrados = array_slice($regIncidencias, $inicio, $registrosPorPagina);

?>

<div class="table-responsive">
    <table class="table table-striped table-sm">
        <thead class="thead-dark">
            <tr>
                <th>#</th>
                <th>Fiscal</th>
                <th>Fecha y Hora</th>
                <th>Organización</th>
                <th>Socio</th>
                <th>Incidencia</th>
                <th>Observaciones</th>
            </tr>
        </thead>
        <tbody>
            <?php
            foreach ($registrosMostrados as $key => $value):
                $paginaGlobal = ($paginaActual - 1) * $registrosPorPagina + $key + 1;
                $idOrganizacion = $value['id_organizacion'];
                $nomOrg = ModeloFormularios::mdlObtenerNombreOrganizacion($idOrganizacion);
                $idIncidencia = $value['incidencia'];
                $nomInci = ModeloFormularios::mdlNomObtenerIncidencias($idIncidencia);

                $fechaHoraBD = $value['fecha'];
                $dateTimeBD = new DateTime($fechaHoraBD, new DateTimeZone('UTC'));
                $dateTimeBD->setTimezone(new DateTimeZone('America/Caracas'));
                $fechaHoraConvertida = $dateTimeBD->format('H:i d-m-Y');
            ?>
            <tr>
                <td><?php echo $paginaGlobal; ?></td>
                <td><?php echo $value['usuario']; ?></td>
                <td><?php echo $fechaHoraConvertida; ?></td>
                <td><?php echo $nomOrg; ?></td>
                <td><?php echo $value['nsocio']; ?></td>
                <td><?php echo $nomInci; ?></td>
                <td><?php echo $value['observaciones']; ?></td>
            </tr>
            <?php endforeach; ?>
        </tbody>
    </table>
</div>

<div class="container">
    <nav aria-label="Page navigation">
        <ul class="pagination justify-content-center ">
            <?php
                $maxPaginasMostradas = 10;
                $mitadMaxPaginas = floor($maxPaginasMostradas / 2);
                $startPage = max(1, $paginaActual - $mitadMaxPaginas);
                $endPage = min($totalPaginas, $startPage + $maxPaginasMostradas - 1);

                if ($endPage - $startPage < $maxPaginasMostradas - 1) {
                    $startPage = max(1, $endPage - $maxPaginasMostradas + 1);
                }

                $paginaRetroceso5 = max(1, $paginaActual - 5);
                $paginaAvance5 = min($totalPaginas, $paginaActual + 5);
                $paginaRetroceso1 = max(1, $paginaActual - 1);
                $paginaAvance1 = min($totalPaginas, $paginaActual + 1);

                if ($paginaActual > 1) {
                    echo '<li class="page-item">';
                    echo '<a class="page-link" href="index.php?pagina=historial&page=' . $paginaRetroceso5 . '" aria-label="Previous">';
                    echo '<span aria-hidden="true">&laquo;</span>';
                    echo '</a>';
                    echo '</li>';
                }

                if ($paginaActual > 6) {
                    echo '<li class="page-item">';
                    echo '<a class="page-link" href="index.php?pagina=historial&page=' . $paginaRetroceso5 . '">-5</a>';
                    echo '</li>';
                }

                for ($i = $startPage; $i <= $endPage; $i++) {
                    $active = $i === $paginaActual ? 'active' : '';
                    echo '<li class="page-item ' . $active . '">';
                    echo '<a class="page-link" href="index.php?pagina=historial&page=' . $i . '">' . $i . '</a>';
                    echo '</li>';
                }

                if ($paginaActual + 6 <= $totalPaginas) {
                    echo '<li class="page-item">';
                    echo '<a class="page-link" href="index.php?pagina=historial&page=' . $paginaAvance5 . '">+5</a>';
                    echo '</li>';
                }

                if ($paginaActual < $totalPaginas) {
                    echo '<li class="page-item">';
                    echo '<a class="page-link" href="index.php?pagina=historial&page=' . ($paginaActual + 1) . '" aria-label="Next">';
                    echo '<span aria-hidden="true">&raquo;</span>';
                    echo '</a>';
                    echo '</li>';
                }
            ?>
        </ul>
    </nav>
</div>