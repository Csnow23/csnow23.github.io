<?php

    if(!isset($_SESSION["validarIngreso"])) {

        // La sesión no está iniciada, redirige al inicio de sesión
        header("Location: index.php");
        
        exit; // Asegura que el script se detenga aquí
    }


    if(isset($_GET["id_usu"])){

        $item = "id_usu";
        $valor = $_GET["id_usu"];

        $usuario = ControladorFormularios::ctrEditarRegUsu($item, $valor);
        
    }elseif(isset($_GET["id"])){

        $item = "id";
        $valor = $_GET["id"];

        $unidad = ControladorFormularios::ctrSeleccionarRegistros($item, $valor);

    }elseif(isset($_GET["id_org"])){

        $item = "id_organizacion";
        $valor = $_GET["id_org"];

        $organizacion = ControladorFormularios::ctrEditarRegOrg($item, $valor);
    }

    $organizaciones = ControladorFormularios::ctrSeleccionarOrganizacion();

?>

               

<?php if (isset($_GET['formulario'])): ?>

    <?php if ($_GET['formulario'] == "Usu"): ?>

        <div class="d-flex justify-content-center text-center">

            <form class="p-5 bg-light" method="post">

                <div class="form-group">

                    <div class="input-group">
            
                        <div class="input-group-prepend">
                            <span class="input-group-text">
                                <i class="fas fa-user"></i>
                            </span>
                        </div>

                        <input type="text" class="form-control" value="<?php echo $usuario["usuario"]; ?> " placeholder=
                        "Escriba su usuario" id="usuario" name="actualizarUsuario">

                    </div>
                
                </div>  

                <div class="form-group">

                    <div class="input-group">

                    <div class="input-group-prepend">
                        <span class="input-group-text">
                        <i class="fas fa-lock"></i>
                        </span>
                    </div>

                    <input type="password" class="form-control" placeholder="Escriba su Contraseña"
                        id="pwd" name="actualizarPassword">

                        <input type="hidden" name="passwordActual" value="<?php echo $usuario["password"];?>">
                        
                        <input type="hidden" name="idUsu" value="<?php echo $usuario["id_usu"]; ?>">

                    </div>
                
                </div>

                <div class="form-group">

                    <label for="rol">Rol del Usuario</label>
                    <select name="actualizarRol" id="rol" class="form-control custom-select">
                        <option selected><?php echo $usuario["rol"]; ?></option>
                        <option value="Admin">Admin</option>
                        <option value="Operador">Operador</option>
                        <option value="Consulta">Consulta</option>
                    </select>

                </div>

                <div class="form-group">

                    <label for="status">Estado de Usuario</label>
                    <select name="actualizarStatus" id="Status" class="form-control custom-select">
                        <option selected><?php echo $usuario["status"]; ?></option>
                        <option value="Activo">Activo</option>
                        <option value="Inactivo">Inactivo</option>
                    </select>

                </div>

                <?php

                    $actualizar = new ControladorFormularios();
                    $actualizar -> ctrActualizarRegistro();

                ?>


                <div class="py-3">

                    
                    <button type="submit" class="btn btn-primary">Actualizar</button>

                </div>

            </form>

        </div>
    
    <?php endif ?>

    <?php if ($_GET['formulario'] == "Uni"): ?>

        <div class="container-fluid">

        <form class="p-5 bg-light" method="post" enctype="multipart/form-data">

            <div class="row">

                <div class="form-group col-sm-5 form-inline">
                    <label for="nsocio" class="col-sm-2">N° de Socio:</label>
                    <input type="text" value="<?php echo $unidad["nsocio"] ?>" class="form-control col-sm-2" id="nsocio" name="actualizarNsocio">
                </div>

                <div class="form-group col-sm-5 form-inline">
                    <label for="qs" class="col-sm-2">QR Serial:</label>
                    <input type="text" value="<?php echo $unidad["qs"] ?>" class="form-control col-sm-5" id="qs" name="actualizarQS">
                </div>
                
            </div>
            <div class="row">      

                    <div class="form-group col-sm-3">
                        <label for="nombrec" class="">Nombre del Conductor:</label>
                        <input type="text" oninput="convertirAMayusculas(this)" value="<?php echo $unidad["nombrec"] ?>" class="form-control " id="nombrec" name="actualizarNombrec">
                    </div>
                    <div class="form-group col-sm-3">
                        <label for="cedulac" class="">Cédula:</label>
                        <input type="text" oninput="convertirAMayusculas(this)" value="<?php echo $unidad["cedulac"] ?>" class="form-control " id="cedulac" name="actualizarCedulac">
                    </div>
                    <div class="form-group col-sm-3">
                        <label for="fotoc" class="">Foto del Conductor:</label>
                        <input type="file" value="<?php echo $unidad["fotoc"]?>" class="form-control-file border" id="fotoc" name="actualizarFotoc" accept="image/*">
                    </div>
                    <div class="form-group col-sm-3">
                        <label for="fotoc" class="">Ruta de la imagen actual:</label>
                        <input type="text" value="<?php echo $unidad['fotoc']; ?>" class="form-control" id="fotoc" name="actualFotoc" readonly>
                    </div>
            </div>
            <div class="row">      

                    <div class="form-group col-sm-3">
                        <label for="nombrea" class="">Nombre del Avance:</label>
                        <input type="text" oninput="convertirAMayusculas(this)" value="<?php echo $unidad["nombrea"] ?>" class="form-control " id="nombrea" name="actualizarNombrea">
                    </div>
                    <div class="form-group col-sm-3">
                        <label for="cedulaa" class="">Cédula:</label>
                        <input type="text" oninput="convertirAMayusculas(this)" value="<?php echo $unidad["cedulaa"] ?>" class="form-control " id="cedulaa" name="actualizarCedulaa">
                    </div>
                    <div class="form-group col-sm-3">
                        <label for="fotoa" class="">Foto del Avance:</label>
                        <input type="file" value="<?php echo $unidad["fotoa"]?>" class="form-control-file border" id="fotoa" name="actualizarFotoa" accept="image/*">
                    </div>
                    <div class="form-group col-sm-3">
                        <label for="fotoa" class="">Ruta de la imagen actual:</label>
                        <input type="text" value="<?php echo $unidad['fotoa']; ?>" class="form-control" id="fotoa" name="actualFotoa" readonly>
                    </div>
            </div>
            <div class="row">

                <div class="form-group col-sm-2">
                    <label for="marca">Marca:</label>
                    <input type="text" oninput="convertirAMayusculas(this)" value="<?php echo $unidad["marca"] ?>" class="form-control" id="marca" name="actualizarMarca">
                </div>
                <div class="form-group col-sm-3">
                    <label for="modelo">Modelo:</label>
                    <input type="text" oninput="convertirAMayusculas(this)" value="<?php echo $unidad["modelo"] ?>" class="form-control" id="modelo" name="actualizarModelo">
                </div>
                <div class="form-group col-sm-2">
                    <label for="year">Año:</label>
                    <input type="number" min="1960" max="2050" step="1" value="<?php echo $unidad["year"] ?>" class="form-control" id="year" name="actualizarYear">
                </div>
                <div class="form-group col-sm-2">
                    <label for="placa">Placa:</label>
                    <input type="text" oninput="convertirAMayusculas(this)" value="<?php echo $unidad["placa"] ?>" class="form-control" id="placa" name="actualizarPlaca">
                </div>
                <div class="form-group col-sm-3">
                    <label for="color">Color:</label>
                    <input type="text" oninput="convertirAMayusculas(this)" value="<?php echo $unidad["color"] ?>" class="form-control" id="color" name="actualizarColor">
                </div>

            </div>

            <div class="row">

                <div class="col-sm-4">
                    <label for="rcv">RCV:</label>
                    <input type="date" value="<?php echo $unidad["rcv"] ?>" class="form-control" id="rcv" name="actualizarRcv">
                </div>
                <div class="col-sm-4">
                    <label for="rcvv">Fecha de Vencimiento</label>
                    <input type="date" value="<?php echo $unidad["rcv"] ?>" class="form-control" id="rcvv" name="actualizarRcvv">
                </div>

            </div>

            <input type="hidden" class="form-control" name="id" value="<?php echo $unidad["id"]; ?>">

            <?php

                $actualizar = new ControladorFormularios();
                $actualizar -> ctrActualizarRegistro();

            ?>

            <div class="row py-3">
                
                <div class="col-sm-5"></div>
                
                <button type="submit" class="btn btn-primary col-sm-2">Actualizar</button>

            </div>
        
        </form>

    <?php endif ?>
    
    <?php if ($_GET['formulario'] == "Org"): ?>

        <div class="d-flex justify-content-center text-center">

            <form class="p-5 bg-light" method="post">

                <div class="form-group">

                    <label for="nameorg">Nombre de Organización</label>
                    <input type="text" value="<?php echo $organizacion["nombre"]; ?>"class="form-control" id="nameorg" name="actualizarNORG">

                </div>

                <div class="form-group">

                    <label for="terminal">Parada Terminal</label>
                    <input type="text" value="<?php echo $organizacion["terminal"]; ?>"class="form-control" id="terminal" name="actualizarTerminal">

                </div>

                <div class="form-group">

                    <label for="tipo">Tipo de Vehículo</label>
                    <select name="actualizarTipo" id="tipo" class="form-control custom-select">
                        <option selected><?php echo $organizacion["tipo"]; ?></option>
                        <option value="Bus">Bus</option>
                        <option value="Taxi">Taxi</option>
                        <option value="Moto-Taxi">Moto-Taxi</option>
                    </select>

                </div>

                <div class="form-group">

                    <label for="fpermiso">Vencimiento del Permiso de Parada</label>
                    <input type="date" value="<?php echo $organizacion["fpermiso"]; ?>"class="form-control" id="fpermiso" name="actualizarFPermiso">
                
                </div>

                <div class="form-group">

                    <label for="casco">Color de Casco</label>
                    <input type="color" value="<?php echo $organizacion["casco"]; ?>" class="form-control" id="casco" name="actualizarCasco">
                
                </div>

                <div class="form-group">

                    <label for="status">Estado de Organización</label>
                    <select name="actualizarStatus" id="status" class="form-control custom-select">
                        <option selected><?php echo $organizacion["status"]; ?></option>
                        <option value="Activo">Activo</option>
                        <option value="Inactivo">Inactivo</option>
                    </select>

                    <input type="hidden" name="idOrg" value="<?php echo $organizacion["id_organizacion"]; ?>">


                </div>

                <?php

                    $actualizar = new ControladorFormularios();
                    $actualizar -> ctrActualizarRegistro();

                ?>

                <div class="py-3">
                    
                    <button type="submit" class="btn btn-primary">Actualizar</button>

                </div>

            </form>

        </div>

    <?php endif ?>


<?php endif ?>