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

    $usuarios = ControladorFormularios::ctrSeleccionarRegistrosUsu(null, null);

    $rolSeleccionado = isset($_GET["rol"]) ? $_GET["rol"] : null;

?>
<!-- Filtro de búsqueda -->
<div class="container-fluid bg-light">
    <div class="form-group col-sm-2 ">
        <label for="rol">Rol de Usuario</label>
    </div>
    <div class="col-sm-5">
        <form method="get">
            <input type="hidden" name="pagina" value="consultausu">
            <select id="rol" name="rol" class="custom-select">
                <option value="">Seleccione un Rol de Usuario</option>
                    <option value="Admin" > Admin </option>
                    <option value="Operador">Operador</option>
                    <option value="Consulta">Consulta</option>
            </select>
            <button type="submit" class="btn btn-primary mt-2 mb-2 mr-sm-2">Seleccionar</button>
            <a href="index.php?pagina=consultausu" class="btn btn-secondary mt-2 mb-2">Borrar filtro</a>
        </form>
    </div>
</div>
<!-- Tabla de registros -->
<div class="container-fluid">
    <table class="table table-striped table-sm">
        <thead class="thead-dark">
            <tr>
                <th class="col-sm-1">#</th>
                <th class="col-sm-2">Username</th>
                <th class="col-sm-1">Rol</th>
                <th class="col-sm-1">Status</th>
                <th class="col-sm-1"></th>
            </tr>
        </thead>

        <tbody>
            <?php
            if (isset($_GET["borrar_filtro"])) {
                   
                $registrosFiltrados = $usuarios;
        
            } elseif (isset($_GET["rol"])) {
                
                $rolUsuario = $_GET["rol"];
                $registrosFiltrados = ControladorFormularios::ctrFiltrarRegistrosPorRol($rolUsuario);
            
            } else {
        
                // Si no se ha enviado el formulario ni se ha solicitado borrar el filtro, muestra todos los registros
                $registrosFiltrados = $usuarios;
            }
            
             foreach ($registrosFiltrados as $key => $value): ?>
                <tr>
                    <td><?php echo ($key+1);?></td>
                    <td><?php echo $value["usuario"]; ?></td>
                    <td><?php echo $value["rol"]; ?></td>
                    <td><?php echo $value["status"]; ?></td>
                    <td>
                        <div class="btn-group">

                            <a href="index.php?pagina=editar&formulario=Usu&id_usu=<?php echo $value["id_usu"]?>; " class="btn
                                btn-warning"><i class="fas fa-pencil-alt"></i></a>
                            <button class="btn btn-danger"><i class="fas fa-trash-alt"></i></button>

                        </div>
                    </td>
                </tr>
            <?php endforeach ?>
        </tbody>
    </table>    
</div>