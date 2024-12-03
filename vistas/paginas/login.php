 <div class="d-flex justify-content-center text-center">

    <form class="p-5 bg-light" method="post">

        <div class="form-group">
            <label for="uname">Usuario:</label>

            <div class="input-group">

                <div class="input-group-prepend">
                    <span class="input-group-text">
                        <i class="fas fa-user"></i>
                    </span>
                </div>

                <input type="text" class="form-control" placeholder="Enter usuario" id="uname" name="ingresoUsuario">
            </div>
        </div>

        <div class="form-group">
            <label for="pwd">Contraseña:</label>

            <div class="input-group">

                <div class="input-group-prepend">
                    <span class="input-group-text">
                    <i class="fas fa-lock"></i>
                    </span>
                </div>

                <input type="password" class="form-control" placeholder="Enter password" id="pwd" name="ingresoPassword">
            </div>  
        </div>

        <?php

            $ingreso = new ControladorFormularios();
            $ingreso -> ctrIngreso();
        
        ?>

        <button type="submit" class="btn btn-primary">Login</button>

    </form>

</div>
