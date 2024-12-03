<?php

require_once "conexion.php";

class ModeloFormularios{

    //Registro
    public static function mdlRegistro($tabla, $datos){
        
        $stmt = Conexion::conectar() -> prepare("INSERT INTO $tabla(id_organizacion, nsocio, nombrec, cedulac, fotoc, nombrea, cedulaa, fotoa, marca, modelo, placa, year, color, rcv, rcvv) VALUES (:id_organizacion, :nsocio, :nombrec, :cedulac, :fotoc, :nombrea, :cedulaa, :fotoa, :marca, :modelo, :placa, :year, :color, :rcv, :rcvv)");
    
        $stmt->bindParam(":id_organizacion", $datos["id_organizacion"], PDO::PARAM_STR);
        $stmt->bindParam(":nsocio", $datos["nsocio"], PDO::PARAM_STR);
        $stmt->bindParam(":nombrec", $datos["nombrec"], PDO::PARAM_STR);
        $stmt->bindParam(":cedulac", $datos["cedulac"], PDO::PARAM_STR);
        $stmt->bindParam(":fotoc", $datos["fotoc"], PDO::PARAM_STR);
        $stmt->bindParam(":nombrea", $datos["nombrea"], PDO::PARAM_STR);
        $stmt->bindParam(":cedulaa", $datos["cedulaa"], PDO::PARAM_STR);
        $stmt->bindParam(":fotoa", $datos["fotoa"], PDO::PARAM_STR);
        $stmt->bindParam(":marca", $datos["marca"], PDO::PARAM_STR);
        $stmt->bindParam(":modelo", $datos["modelo"], PDO::PARAM_STR);
        $stmt->bindParam(":placa", $datos["placa"], PDO::PARAM_STR);
        $stmt->bindParam(":year", $datos["year"], PDO::PARAM_INT);
        $stmt->bindParam(":color", $datos["color"], PDO::PARAM_STR);
        $stmt->bindParam(":rcv", $datos["rcv"], PDO::PARAM_STR);
        $stmt->bindParam(":rcvv", $datos["rcvv"], PDO::PARAM_STR);

        if($stmt->execute()){

            $stmt = Conexion::conectar()->prepare("UPDATE $tabla SET permiso = (SELECT fpermiso FROM organizaciones WHERE id_organizacion = :id_organizacion)");
            
            $stmt->bindParam(":id_organizacion", $datos["id_organizacion"], PDO::PARAM_STR);

            $stmt->execute();

            return "ok";


        }else{

            print_r(Conexion::conectar()->errorInfo());

        }
        
    }

    //Registro Organizacion
    public static function mdlRegistroOrg($tabla, $datos){

        $stmt = Conexion::conectar() -> prepare("INSERT INTO $tabla(nombre, terminal, tipo, fpermiso, casco) VALUES (:nombre, :terminal, :tipo, :fpermiso, :casco)");

        $stmt->bindParam(":nombre", $datos["nombre"], PDO::PARAM_STR);
        $stmt->bindParam(":terminal", $datos["terminal"], PDO::PARAM_STR);
        $stmt->bindParam(":tipo", $datos["tipo"], PDO::PARAM_STR);
        $stmt->bindParam(":fpermiso", $datos["fpermiso"], PDO::PARAM_STR);
        $stmt->bindParam("casco", $datos["casco"], PDO::PARAM_STR);


        if($stmt->execute()){

            return "ok";

        }else{

            print_r(Conexion::conectar()->errorInfo());

        }

    }

    //Registro Usuarios
    public static function mdlRegistroUsu($tabla, $datos){

        $stmt = Conexion::conectar() -> prepare("INSERT INTO $tabla(usuario, password, rol) VALUES (:usuario, :password, :rol)");

        $stmt->bindParam(":usuario", $datos["usuario"], PDO::PARAM_STR);
        $stmt->bindParam(":password", $datos["password"], PDO::PARAM_STR);
        $stmt->bindParam(":rol", $datos["rol"], PDO::PARAM_STR);

        if($stmt->execute()){

            return "ok";

        }else{

            print_r(Conexion::conectar()->errorInfo());

        }

    }

    //Registro de incidencias
    public static function mdlRegistroInci($tabla, $datos){

        $stmt = Conexion::conectar() -> prepare ("INSERT INTO $tabla(usuario, id_organizacion, nsocio, location, incidencia, observaciones) VALUES (:usuario, :id_organizacion, :nsocio, :location, :incidencia, :observaciones)");
    
        $stmt->bindParam(":usuario", $datos["usuario"], PDO::PARAM_STR);
        $stmt->bindParam(":id_organizacion", $datos["id_organizacion"], PDO::PARAM_STR);
        $stmt->bindParam(":nsocio", $datos["nsocio"], PDO::PARAM_INT);
        $stmt->bindParam(":location", $datos["location"], PDO::PARAM_STR);
        $stmt->bindParam(":incidencia", $datos["incidencia"], PDO::PARAM_STR);
        $stmt->bindParam(":observaciones", $datos["observaciones"], PDO::PARAM_STR);

        if($stmt->execute()){

            return "ok";

        }else{

            print_r(Conexion::conectar()->errorInfo());
        }
    }

    //Seleccionar Registro
    public static function mdlSeleccionarRegistros($tabla, $id, $item, $valor){

        if($item == null && $valor == null){

            $stmt = Conexion::conectar()->prepare("SELECT * FROM $tabla ORDER BY $id");

            $stmt->execute();

            return $stmt -> fetchAll();

        }else{

            $stmt = Conexion::conectar()->prepare("SELECT * FROM $tabla WHERE $item = :$item");

            $stmt->bindParam(":".$item, $valor, PDO::PARAM_STR);

            $stmt->execute();

            return $stmt -> fetch();

        }


    }    

    //Seleccionar Organizaciones
    public static function mdlObtenerOrganizaciones($tabla){

        $stmt = Conexion::conectar()->prepare("SELECT * FROM $tabla");

        $stmt->execute();

        return $stmt -> fetchALL();

    }

    public static function mdlObtenerIncidencias($tabla){

        $stmt = Conexion::conectar()->prepare("SELECT * FROM $tabla");

        $stmt->execute();

        return $stmt -> fetchALL();

    }

    //Nombre de las organizaciones
    public static function mdlObtenerNombreOrganizacion($idOrganizacion) {
        
        $stmt = Conexion::conectar()->prepare("SELECT nombre FROM organizaciones WHERE id_organizacion = :idOrganizacion");
        
        $stmt->bindParam(":idOrganizacion", $idOrganizacion, PDO::PARAM_INT);
        
        $stmt->execute();
        
        return $stmt->fetch(PDO::FETCH_ASSOC)["nombre"];
    }

    //Seleccionar Registro por Organizacion
    public static function mdlSeleccionarRegistrosPorOrganizacion($tabla, $item, $id, $valor){

        if($item == null && $valor == null){

            $stmt = Conexion::conectar()->prepare("SELECT * FROM $tabla ORDER BY $id");

            $stmt->execute();

            return $stmt -> fetchAll();

        }else{

            $stmt = Conexion::conectar()->prepare("SELECT * FROM $tabla WHERE $item = :$item");

            $stmt->bindParam(":".$item, $valor, PDO::PARAM_STR);

            $stmt->execute();

            return $stmt -> fetchALL();

        }

    }

    //Registrar en el Historial
    public static function mdlRegistrarHistorial($accion, $usuario, $descripcion){

        $stmt = Conexion::conectar()->prepare("INSERT INTO historial (action, usuario, descripcion) VALUES (:action, :usuario, :descripcion)");

        $stmt->bindParam(":action", $accion, PDO::PARAM_STR);

        $stmt->bindParam(":usuario", $usuario, PDO::PARAM_STR);

        $stmt->bindParam(":descripcion", $descripcion, PDO::PARAM_STR);

        $stmt->execute();

    }

    //Obtener Historico
    public static function mdlObtenerRegistrosHistorial(){

        $stmt = Conexion::conectar()->prepare("SELECT * FROM historial ORDER BY fecha DESC");

        $stmt->execute();

        return $stmt->fetchALL();
        
    }

    //Obtener incidencias
    public static function mdlObtenerRegIncidencias($socio, $org){

        if ($socio == null && $org == null ){

            $stmt = Conexion::conectar()->prepare("SELECT * FROM regincidencias ORDER BY fecha DESC");

            $stmt->execute();

            return $stmt->fetchALL();

        }else{

            $stmt = Conexion::conectar()->prepare("SELECT * FROM regincidencias WHERE nsocio = :nsocio AND id_organizacion = :id_organizacion ORDER BY fecha DESC");

            $stmt->bindParam(":nsocio", $socio, PDO::PARAM_INT);

            $stmt->bindParam(":id_organizacion", $org, PDO::PARAM_INT);

            $stmt->execute();

            return $stmt->fetchALL();

        }
        
    }

    //Nombre de las organizaciones
    public static function mdlNomObtenerIncidencias($idIncidencia) {
        
        $stmt = Conexion::conectar()->prepare("SELECT nombre FROM t_incidencias WHERE id_incidencias = :idIncidencia");
        
        $stmt->bindParam(":idIncidencia", $idIncidencia, PDO::PARAM_INT);
        
        $stmt->execute();
        
        return $stmt->fetch(PDO::FETCH_ASSOC)["nombre"];
    }

    //Actualizar Usuarios
    public static function mdlActualizarRegUsu($tabla, $datos){

        $stmt = Conexion::conectar() ->prepare("UPDATE $tabla SET usuario = :usuario, password = :password,
        rol = :rol, status = :status WHERE id_usu = :id_usu");

        $stmt->bindParam(":usuario", $datos["usuario"], PDO::PARAM_STR);
        $stmt->bindParam(":password", $datos["password"], PDO::PARAM_STR);
        $stmt->bindParam(":rol", $datos["rol"], PDO::PARAM_STR);
        $stmt->bindParam(":status", $datos["status"], PDO::PARAM_STR);
        $stmt->bindParam(":id_usu", $datos["id_usu"], PDO::PARAM_INT);

        if($stmt->execute()){

            return "ok";

        }else{

            print_r(Conexion::conectar()->errorInfo());
        }
        
    }

    //Actualizar Registros
    public static function mdlActualizarRegUni($tabla, $datos){

        $stmt = Conexion::conectar() ->prepare("UPDATE $tabla SET nsocio = :nsocio, qs = :qs, nombrec = :nombrec, cedulac = :cedulac, fotoc = :fotoc, nombrea = :nombrea, cedulaa = :cedulaa, fotoa = :fotoa, marca = :marca, modelo = :modelo, year = :year, placa = :placa, color = :color, rcv = :rcv, rcvv = :rcvv WHERE id = :id");

        $stmt->bindParam(":nsocio", $datos["nsocio"], PDO::PARAM_INT);
        $stmt->bindParam(":qs", $datos["qs"], PDO::PARAM_STR);
        $stmt->bindParam(":nombrec", $datos["nombrec"], PDO::PARAM_STR);
        $stmt->bindParam(":cedulac", $datos["cedulac"], PDO::PARAM_STR);
        $stmt->bindParam(":fotoc", $datos["fotoc"], PDO::PARAM_STR);
        $stmt->bindParam(":nombrea", $datos["nombrea"], PDO::PARAM_STR);
        $stmt->bindParam(":cedulaa", $datos["cedulaa"], PDO::PARAM_STR);
        $stmt->bindParam(":fotoa", $datos["fotoa"], PDO::PARAM_STR);
        $stmt->bindParam(":marca", $datos["marca"], PDO::PARAM_STR);
        $stmt->bindParam(":modelo", $datos["modelo"], PDO::PARAM_STR);
        $stmt->bindParam(":year", $datos["year"], PDO::PARAM_STR);
        $stmt->bindParam(":placa", $datos["placa"], PDO::PARAM_STR);
        $stmt->bindParam(":color", $datos["color"], PDO::PARAM_STR);
        $stmt->bindParam(":rcv", $datos["rcv"], PDO::PARAM_STR);
        $stmt->bindParam(":rcvv", $datos["rcvv"], PDO::PARAM_STR);
        $stmt->bindParam(":id", $datos["id"], PDO::PARAM_INT);

        if($stmt->execute()){

            return "ok";

        }else{

            print_r(Conexion::conectar()->errorInfo());

        }
    
    }

    //Actualizar Registros
    public static function mdlActualizarRegOrg($tabla, $datos){

        $stmt = Conexion::conectar() ->prepare("UPDATE $tabla SET nombre = :nombre, terminal = :terminal, tipo = :tipo, fpermiso = :fpermiso, casco = :casco, status = :status WHERE id_organizacion = :id_organizacion");
    
        $stmt->bindParam(":nombre", $datos["nombre"], PDO::PARAM_STR);
        $stmt->bindParam(":terminal", $datos["terminal"], PDO::PARAM_STR);
        $stmt->bindParam(":tipo", $datos["tipo"], PDO::PARAM_STR);
        $stmt->bindParam(":fpermiso", $datos["fpermiso"], PDO::PARAM_STR);
        $stmt->bindParam(":casco", $datos["casco"], PDO::PARAM_STR);
        $stmt->bindParam(":status", $datos["status"], PDO::PARAM_STR);
        $stmt->bindParam(":id_organizacion", $datos["id_organizacion"], PDO::PARAM_INT);

        if($stmt->execute()){

            $stmt = Conexion::conectar() ->prepare("UPDATE registros SET permiso = (SELECT fpermiso FROM $tabla WHERE id_organizacion = :id_organizacion) WHERE id_organizacion = :id_organizacion");
            
            $stmt->bindParam(":id_organizacion", $datos["id_organizacion"], PDO::PARAM_INT);

            $stmt->execute(); 

            return "ok";

        }else{

            print_r(Conexion::conectar()->errorInfo());

        }
    }


}
