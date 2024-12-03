<?php

    if(!isset($_SESSION["validarIngreso"])) {

        // La sesión no está iniciada, redirige al inicio de sesión
        header("Location: index.php");
        
        exit; // Asegura que el script se detenga aquí
    }

    $organizaciones = ControladorFormularios::ctrSeleccionarRegistrosOrg(null, null);

?>
<div class="container-fluid bg-light">
    <div class="form-group col-sm-2 ">
        <label for="tipo">Tipo de Vehículo</label>
    </div>
    <div class="col-sm-5">
        <form method="post">
            <select id="tipo" name="tipo" class="custom-select">
                <option selected>Seleccione un tipo de Vehículo</option>
                <option value="Bus">Bus</option>
                <option value="Taxi">Taxi</option>
                <option value="Moto-Taxi">Moto-Taxi</option>
            </select>
            <button type="submit" class="btn btn-primary mt-2 mb-2 mr-sm-2">Seleccionar</button>
            <a href="index.php?pagina=consultaorg" class="btn btn-secondary mt-2 mb-2">Borrar filtro</a>
        </form>
    </div>
</div>
<!-- Tabla de registros -->
<div class="thead-dark">
    <table class="table  table-striped table-sm">
        <thead class="thead-dark">
            <tr>
                <th>#</th>
                <th>Nombre</th>
                <th>Parada Terminal</th>
                <th>Tipo</th>
                <th>Vencimiento de Permiso</th>
                <th></th>
            </tr>
        </thead>

        <tbody>
            <?php 
            
                if (isset($_GET["borrar_filtro"])) {
                   
                   $registrosFiltrados = $usuarios;

                }elseif (isset($_POST["tipo"])) {
                    $tipoVehiculo = $_POST["tipo"];
                    $registrosFiltrados = ControladorFormularios::ctrFiltrarRegistrosPorTipo($tipoVehiculo);
                    
                } else {
                    // Si no se ha enviado el formulario, muestra todos los registros
                    $registrosFiltrados = $organizaciones;
                }

                foreach ($registrosFiltrados as $key => $value): ?>
                <tr>
                    <td><?php echo ($key+1);?></td>
                    <td><?php echo $value["nombre"]; ?></td>
                    <td><?php echo $value["terminal"]; ?></td>
                    <td><?php echo $value["tipo"]; ?></td>
                    <td><?php echo $value["fpermiso"]; ?></td>
                    <td>
                        <div class="btn-group">

                            <a href="index.php?pagina=editar&formulario=Org&id_org=<?php echo $value["id_organizacion"]?>; " class="btn
                                btn-warning"><i class="fas fa-pencil-alt"></i></a>
                            <button class="btn btn-danger"><i class="fas fa-trash-alt"></i></button>

                        </div>
                    </td>
                </tr>
            <?php endforeach ?>
        </tbody>
    </table>    
</div>
