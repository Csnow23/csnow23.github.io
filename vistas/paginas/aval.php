<?php
    
    if(isset($_GET["qs"])){

        $item = "qs";
        $valor = $_GET["qs"];

        $unidad = ControladorFormularios::ctrSeleccionarRegistros($item, $valor);

    }

    $organizaciones = ControladorFormularios::ctrSeleccionarOrganizacion();



    $coincidencia = false;
    
    if (isset($unidad) && is_array($unidad)) {

        $coincidencia = true;
    
        $fechaRcvv = $unidad['rcvv'];
        $fechaFpermiso = $unidad['permiso'];
        $fhActual = date("Y-m-d");

        if($fhActual >= $fechaRcvv || $fhActual >= $fechaFpermiso){

            $status = "No Apta";
            $color = "red";
            $icon = "fa-solid fa-hand fa-beat";
            $like = "color; #db3f0a;";


        }else{

            $status = "Apta";
            $color = "green";
            $icon = "fa-solid fa-check fa-beat";
            $like = "color: #02ddb0a;";
        
        }
    }

?>

<div class="container"style="border: 1px solid black; height: auto;" >

    <div style="display: flex; justify-content: space-between; ">

        <div style="margin-top: 4%; display: flex-start; align-content: center; flex-wrap: wrap;"><img src="media/MOVILIDAD-LOGO.png" alt="" style="width: 18%;"></div>

        <div class="marco-fecha" style="font-weight:500; font-size: 3vw; width: 100px; height:40px; margin-top: 3%; display: flex; align-items: center; justify-content: center;">
 
            <?php echo date("d/m/Y"); ?>

        </div>

    </div>

    <?php if ($coincidencia) {

        if (isset($_SESSION["validarIngreso"])) {
            // El usuario ha iniciado sesión, por lo que se permite acceder al enlace.
            $url = "index.php?pagina=certificado&qs=" . $unidad["qs"] ;
        } else {
            // El usuario no ha iniciado sesión, redirigir al login y luego volver a esta URL después del inicio de sesión exitoso.
            $url = "index.php?redirect=" . urlencode("index.php?pagina=certificado&qs=" . $unidad["qs"]);
        } ?>
        
    <div class="container" style="padding: 25px; border: 2px solid black; text-align: center; margin-top: 3;">
    
        <h5 style="margin-top: 5%;">INSTITUTO DE MOVILIDAD URBANA</h5>

        <h3 style="font-weight: bold;"> UNIDAD REVISADA</h3>

        <h1 style="color: <?php echo $color ?>"> <?php echo $status ?> <i class="<?php echo $icon ?>" style= "<?php echo $like ?>"></i></h1>

        <h4>N° de Socio <?php echo $unidad["nsocio"]; ?> </h4>

        <a href="<?php echo $url ?>"> <?php echo $unidad["qs"] ?> </a>

    </div>

    <div class="container">
        
        <?php

            foreach ($organizaciones as $organizacion) {
                
                //Inicia el bucle buscando coincidencia del Id de la Unidad
                //Con el id de las organizaciones para traer los datos y plasmar el banner
                if ($organizacion['id_organizacion'] == $unidad['id_organizacion']) {

                    $casco = $organizacion['casco'];

                    echo "<div class='container-fluid' style='display: flex; align-items: center;justify-content: flex-start;'>";

                    echo '<img src="media/logoQR.jpg" alt="" style="width: 45px;">';

                    echo "<div style='background: $casco;'>";
                    echo '<h6>' . $organizacion['nombre'] . '</h6 >';
                    echo '</div>';

                    echo '</div>';

                    // Detenemos el bucle una vez que se encuentra la coincidencia.
                    break;
                }
            }
        ?>

    </div>
    <?php 
        
    } else {?>

        <div class="container" style="display: flex; flex-direction: column; flex-wrap: nowrap; align-items: center; height: 400px; justify-content: space-evenly;">
            <h3>QR sin Asignar</h3>
            
            <h4> <?php echo "QR Serial ". $_GET["qs"]; ?> </h4>
        </div>
    <?php } ?>

</div>