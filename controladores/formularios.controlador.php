<?php

class ControladorFormularios{

    // Ingreso
    public function ctrIngreso(){

        if(isset($_POST["ingresoUsuario"]) && isset($_POST["ingresoPassword"]) && !empty($_POST["ingresoUsuario"]) && !empty($_POST["ingresoPassword"])) {

            $tabla = "usuarios";
            $item = "usuario";
            $valor = $_POST["ingresoUsuario"];

            $respuesta = ModeloFormularios::mdlSeleccionarRegistros($tabla, null, $item, $valor);

            if ($respuesta && $respuesta["password"] == $_POST["ingresoPassword"]) {

                $_SESSION["validarIngreso"] = $respuesta["usuario"];
                $_SESSION["rol"] = $respuesta["rol"]; // Agregar el rol a la sesión

                if(isset($_GET['redirect'])) {
                    $redirect_url = $_GET ['redirect'] ;
                    header('Location: '. $redirect_url);
                    exit;
                } else {

                    $accion = "Ingreso al sistema";
                    $usuario = $_SESSION['validarIngreso'];
                    $descripcion = "Ha ingresado al sistema: ". $_SESSION["validarIngreso"];
                    $respuestaHistorial = ModeloFormularios::mdlRegistrarHistorial($accion, $usuario, $descripcion);

                    // Verificar el rol del usuario y redirigir según el rol
                    if ($_SESSION["rol"] === 'Policia') {
                        header("Location: index.php?pagina=consulta");
                    } else {
                        // Manejar otro rol o redirigir a una página por defecto
                        header("Location: index.php?pagina=inicio");
                    }
                    exit;
                }
            } else {

                echo '<script>

                    if (window.history.replaceState){
                        window.history.replaceState(null, null, window.location.href);
                    }

                </script>';

                echo '<div class="alert alert-danger">Error al ingresar al sistema, el Usuario o la Contraseña no coinciden.</div>';
            }
        } 
    }


    

    //Mensaje de Bienvenida
    public static function ctrObtenerMensajeBienvenida(){

        if(isset($_SESSION["validarIngreso"])){

            $username = $_SESSION["validarIngreso"];
            date_default_timezone_set('America/Caracas');
            $fhActual = date("d/m/Y H:i");

            return "Bienvenido, $username. Hoy es $fhActual";

        }else{

            return "";

        }
    }

    //Registro
    public static function ctrRegistro(){

        if(isset($_POST["registroNsocio"])){

            $avancen = ($_POST["registroNombrea"] != "") ? $_POST["registroNombrea"] : "N/A";
            $avancec = ($_POST["registroCedulaa"] != "") ? $_POST["registroCedulaa"] : "N/A";

            $tabla = "registros";

            if ($_FILES["registroFotoc"]["error"] == 0) {

                $nombreArchivo = $_FILES["registroFotoc"]["name"];
                $rutaDestino = "media/mediaDA/" . $nombreArchivo;

                if(move_uploaded_file($_FILES["registroFotoc"]["tmp_name"], $rutaDestino)){

                    // La imagen se ha cargado con éxito y está almacenada en la carpeta "media/mediaDA/"
                    $urlImagen = $rutaDestino;

                }else{

                    echo "Hubo un error al subir el archivo.";
                    
                }
                
                if ($_FILES["registroFotoa"]["error"] == 0) {

                    $nombreArchivoa = $_FILES["registroFotoa"]["name"];
                    $rutaDestinoa = "media/mediaDA/" . $nombreArchivoa;
    
                    if(move_uploaded_file($_FILES["registroFotoa"]["tmp_name"], $rutaDestinoa)){
    
                        // La imagen se ha cargado con éxito y está almacenada en la carpeta "media/mediaDA/"
                        $urlImagena = $rutaDestinoa;
    
                    }else{
    
                        echo "Hubo un error al subir el archivo.";
                        
                    }
                
                }else{

                    $urlImagena = "media/mediaDA/na.jpg";
                }

                $datos = array("id_organizacion" => $_POST["registroOrganizacion"],
                            "nsocio" => $_POST["registroNsocio"],
                            "nombrec" => $_POST["registroNombrec"],
                            "cedulac" => $_POST["registroCedulac"],
                            "fotoc" => $urlImagen,
                            "nombrea" => $avancen,
                            "cedulaa" => $avancec,
                            "fotoa" => $urlImagena,
                            "marca" => $_POST["registroMarca"],
                            "modelo" => $_POST["registroModelo"],
                            "year" => $_POST["registroYear"],
                            "placa" => $_POST["registroPlaca"],
                            "color" => $_POST["registroColor"],
                            "rcv" => $_POST["registroRcv"],
                            "rcvv" => $_POST["registroRcvv"]);

                $respuesta = ModeloFormularios::mdlRegistro($tabla, $datos);

                $accion = "Registro de Unidad";
    
                $usuario = $_SESSION['validarIngreso'];

                $idOrganizacion = $_POST["registroOrganizacion"];

                $nomOrg = ModeloFormularios::mdlObtenerNombreOrganizacion($idOrganizacion);
        
                $descripcion = "Se ha registrado una nueva unidad ". $_POST["registroNsocio"] . " en la Organizacion: $nomOrg";
        
                $respuestaHistorial = ModeloFormularios::mdlRegistrarHistorial($accion, $usuario, $descripcion);
    
                return $respuesta;

            }else{

                return "error_imagen";
                
            } 

        }else if(isset($_POST["registroNORG"])){

            $tabla = "organizaciones";

            $datos = array("nombre" => $_POST["registroNORG"],
                            "terminal" => $_POST["registroTerminal"],
                            "tipo" => $_POST["registroTipo"],
                            "fpermiso" => $_POST["registroFPermiso"],
                            "casco" => $_POST["registroCasco"]);

            $respuesta = ModeloFormularios::mdlRegistroOrg($tabla, $datos);

            $accion = "Registro de Organización";

            $usuario = $_SESSION['validarIngreso'];
    
            $descripcion = "Se ha registrado una nueva Organizacion con el nombre: ". $_POST["registroNORG"]." y de tipo: ".$_POST["registroTipo"];
    
            $respuestaHistorial = ModeloFormularios::mdlRegistrarHistorial($accion, $usuario, $descripcion);

            return $respuesta;

        }else if(isset($_POST["registroUsuario"])){

            $tabla = "usuarios";

            $datos = array("usuario" => $_POST["registroUsuario"],
                            "password" => $_POST["registroPassword"],
                            "rol" => $_POST["registroRol"]);
            
            $respuesta = ModeloFormularios::mdlRegistroUsu($tabla, $datos);

            $accion = "Registro de Usuario";

            $usuario = $_SESSION['validarIngreso'];
    
            $descripcion = "Se ha registrado un nuevo usuario con el nombre: ". $_POST["registroUsuario"];
    
            $respuestaHistorial = ModeloFormularios::mdlRegistrarHistorial($accion, $usuario, $descripcion);

            return $respuesta;

        }else if(isset($_POST["incidenciaRepor"]) && is_array($_POST["incidenciaRepor"])){

            foreach ($_POST["incidenciaRepor"] as $checkbox) {

                $observaciones = ($_POST["incidenciaOtros"] != "") ? $_POST["incidenciaOtros"] : "Sin observaciones.";

                $tabla = "regincidencias";

                $datos = array("usuario" => $_POST["incidenciaUsu"],
                                "id_organizacion" => $_POST["incidenciaOrg"],
                                "nsocio" => $_POST["incidenciaSocio"],
                                "location" => $_POST["incidenciaLocation"],
                                "incidencia" => $checkbox,
                                "observaciones" => $observaciones);

                $respuesta = ModeloFormularios::mdlRegistroInci($tabla, $datos);

            }

            $accion = "Registro de Incidencia";

            $usuario = $_SESSION['validarIngreso'];

            $idOrganizacion = $_POST["incidenciaOrg"];

            $nomOrg = ModeloFormularios::mdlObtenerNombreOrganizacion($idOrganizacion);

            $descripcion = "Se ha registrado una incidencia a la unidad ". $_POST["incidenciaSocio"]. " de la Organización $nomOrg";
        
            $respuestaHistorial = ModeloFormularios::mdlRegistrarHistorial($accion, $usuario, $descripcion);

            return $respuesta;

            
        }


    }

    //Seleccionar Registro Unidades
    public static function ctrSeleccionarRegistros($item, $valor){

        $tabla = "registros";

        $id = "nsocio";

        if (isset($_GET['pagina']) && $_GET['pagina'] == 'certificado') {

            if (isset($_GET['qs'])) {

                $accion = "Consulta de QR";
                $usuario = $_SESSION['validarIngreso'];
                $descripcion = "Se ha consultado el código QR N°: " . $_GET["qs"];
                $respuestaHistorial = ModeloFormularios::mdlRegistrarHistorial($accion, $usuario, $descripcion);
                
            }
            
        }

        $respuesta = ModeloFormularios::mdlSeleccionarRegistros($tabla, $id, $item, $valor);

        return $respuesta;
    }

    //Seleccionar Registro Organizaciones
    public static function ctrSeleccionarRegistrosOrg(){

        $tabla = "organizaciones";

        $id = "id_organizacion";

        $respuesta = ModeloFormularios::mdlSeleccionarRegistros($tabla, $id, null, null);

        return $respuesta;
    }

    //Seleccionar Registro Organizaciones
    public static function ctrSeleccionarRegistrosUsu(){

        $tabla = "usuarios";

        $id = "id_usu";

        $respuesta = ModeloFormularios::mdlSeleccionarRegistros($tabla, $id, null, null);

        return $respuesta;
    }

    //Seleccionar Organizaciones
    public static function ctrSeleccionarOrganizacion(){

       $tabla = "organizaciones";

       $respuesta = ModeloFormularios::mdlObtenerOrganizaciones($tabla);

       return $respuesta;
    }

    //Seleccionar incidencias
    public static function ctrSeleccionarIncidencias(){

        $tabla = "t_incidencias";
 
        $respuesta = ModeloFormularios::mdlObtenerIncidencias($tabla);
 
        return $respuesta;
     }

    //Filtro de organizaciones
    public static function ctrFiltrarRegistrosPorOrganizacion($idOrganizacion) {

        $tabla = "registros";
        
        $item = "id_organizacion";

        $id = "nsocio";
        
        $valor = $idOrganizacion;
        
        $respuesta = ModeloFormularios::mdlSeleccionarRegistrosPorOrganizacion($tabla, $item, $id, $valor);
        
        return $respuesta;
    }

    //Filtro de Tipo de Vehículo
    public static function ctrFiltrarRegistrosPorTipo($tipoVehiculo) {

        $tabla = "organizaciones";
        
        $item = "tipo";

        $id = "id";
        
        $valor = $tipoVehiculo;
        
        $respuesta = ModeloFormularios::mdlSeleccionarRegistrosPorOrganizacion($tabla, $item, $id, $valor);
        
        return $respuesta;
    }

    //Filtro de Rol de Usuario
    public static function ctrFiltrarRegistrosPorRol($rolUsuario) {

        $tabla = "usuarios";
        
        $item = "rol";

        $id = "id";
        
        $valor = $rolUsuario;
        
        $respuesta = ModeloFormularios::mdlSeleccionarRegistrosPorOrganizacion($tabla, $item, $id, $valor);
        
        return $respuesta;
    }

    //Seleccionar Registro Unidades
    public static function ctrEditarRegUsu($item, $valor){

        $tabla = "usuarios";

        $id = "id_usu";

        $respuesta = ModeloFormularios::mdlSeleccionarRegistros($tabla, $id, $item, $valor);

        return $respuesta;
    }
    
    //Seleccionar Registro Unidades
    public static function ctrEditarRegOrg($item, $valor){

        $tabla = "organizaciones";

        $id = "id_organizacion";

        $respuesta = ModeloFormularios::mdlSeleccionarRegistros($tabla, $id, $item, $valor);

        return $respuesta;
    }

    //Actualizar Registro
    public function ctrActualizarRegistro(){

        if (isset($_POST["actualizarUsuario"])){

            if($_POST["actualizarPassword"] != ""){

                $password = $_POST["actualizarPassword"];

            }else{

                $password = $_POST["passwordActual"];

            }

            $tabla = "usuarios";

            $datos = array("usuario" => $_POST["actualizarUsuario"],
                            "password" => $password,
                            "rol" => $_POST["actualizarRol"],
                            "status" => $_POST["actualizarStatus"],
                            "id_usu" => $_POST["idUsu"]);

            $respuesta = ModeloFormularios::mdlActualizarRegUsu($tabla, $datos);

            $accion = "Actualización de datos";

            $usuario = $_SESSION['validarIngreso'];
    
            $descripcion = "Se ha registrado un cambio en el Usuario: ". $_POST["actualizarUsuario"];
    
            $respuestaHistorial = ModeloFormularios::mdlRegistrarHistorial($accion, $usuario, $descripcion);

            if($respuesta == "ok"){

                echo '<script>

                    if ( window.history.replaceState ) {
            
                    window.history.replaceState( null, null, window.location.href);
            
                    }
		
			    </script>';
		
			    echo '<div class="alert alert-success">El usuario ha sido actualizado</div>';
            }

        } elseif (isset($_POST["actualizarNsocio"])){

            $tabla = "registros";

            if (empty($_FILES["actualizarFotoc"]["name"])) {

                $urlAImagen = $_POST["actualFotoc"];

            }else{

                $nombreAArchivo = $_FILES["actualizarFotoc"]["name"];
                $rutaADestino = "media/mediaDA/" . $nombreAArchivo;

                if(move_uploaded_file($_FILES["actualizarFotoc"]["tmp_name"], $rutaADestino)){

                    // La imagen se ha cargado con éxito y está almacenada en la carpeta "media/mediaDA/"
                    $urlAImagen = $rutaADestino;

                }else{

                    echo "Hubo un error al subir el archivo.";
                    
                }

            }

            if (empty($_FILES["actualizarFotoa"]["name"])) {

                $urlAImagena = $_POST["actualFotoa"];

            }else{

                $nombreAArchivoa = $_FILES["actualizarFotoa"]["name"];
                $rutaADestinoa = "media/mediaDA/" . $nombreAArchivoa;

                if(move_uploaded_file($_FILES["actualizarFotoa"]["tmp_name"], $rutaADestinoa)){

                    // La imagen se ha cargado con éxito y está almacenada en la carpeta "media/mediaDA/"
                    $urlAImagena = $rutaADestinoa;

                }else{

                    echo "Hubo un error al subir el archivo.";
                    
                }

            }                  
            
            $datos = array("nsocio" => $_POST["actualizarNsocio"],
                            "qs" => $_POST["actualizarQS"],
                            "nombrec" => $_POST["actualizarNombrec"],
                            "cedulac" => $_POST["actualizarCedulac"],
                            "fotoc" => $urlAImagen,
                            "nombrea" => $_POST["actualizarNombrea"],
                            "cedulaa" => $_POST["actualizarCedulaa"],
                            "fotoa" => $urlAImagena,
                            "marca" => $_POST["actualizarMarca"],
                            "modelo" => $_POST["actualizarModelo"],
                            "year" => $_POST["actualizarYear"],
                            "placa" => $_POST["actualizarPlaca"],
                            "color" => $_POST["actualizarColor"],
                            "rcv" => $_POST["actualizarRcv"],
                            "rcvv" => $_POST["actualizarRcvv"],
                            "id" => $_POST["id"]);

            $respuesta = ModeloFormularios::mdlActualizarRegUni($tabla, $datos);

            $accion = "Actualización de datos";

            $usuario = $_SESSION['validarIngreso'];
    
            $descripcion = "Se ha registrado un cambio en la unidad: ". $_POST["actualizarNsocio"]. "de la organización";

            if($respuesta == "ok"){

                echo '<script>

                    if ( window.history.replaceState ) {
            
                    window.history.replaceState( null, null, window.location.href);
            
                    }
		
			    </script>';
		
			    echo '<div class="alert alert-success">La Unidad ha sido actualizada</div>';
            
            }

        } elseif (isset($_POST["actualizarNORG"])){

            $tabla = "organizaciones";

            $datos = array("nombre" => $_POST["actualizarNORG"],
                            "terminal" => $_POST["actualizarTerminal"],
                            "tipo" => $_POST["actualizarTipo"],
                            "fpermiso" => $_POST["actualizarFPermiso"],
                            "casco" => $_POST["actualizarCasco"],
                            "status" => $_POST["actualizarStatus"],
                            "id_organizacion" => $_POST["idOrg"]);

            $respuesta = ModeloFormularios::mdlActualizarRegOrg($tabla, $datos);

            $accion = "Actualización de datos";

            $usuario = $_SESSION['validarIngreso'];
    
            $descripcion = "Se ha registrado un cambio en la Organizacion con el nombre: ". $_POST["actualizarNORG"];
    
            $respuestaHistorial = ModeloFormularios::mdlRegistrarHistorial($accion, $usuario, $descripcion);

            if($respuesta == "ok"){

                echo '<script>

                    if ( window.history.replaceState ) {
            
                    window.history.replaceState( null, null, window.location.href);
            
                    }
		
			    </script>';
		
			    echo '<div class="alert alert-success">La Organización ha sido actualizada</div>';
            
            }

        }

    }

}
