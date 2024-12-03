<?php

    if(!isset($_SESSION["validarIngreso"])) {

        // La sesión no está iniciada, redirige al inicio de sesión
        header("Location: index.php");
        
        exit; // Asegura que el script se detenga aquí
    }

?>

<div class="container-fluid">
    <table class="columns text-center">

        <tr>
            
            <td><div id="donutchart" style="width: 500px; height: 550px;"></div></td>
            <td><div style="width: 20%;"></div></td>

            <td><div id="Anthony_chart_div" style="width: 500px; height: 550px;"></div></td>
        </tr>
    </table>
</div>

<script type="text/javascript">
    google.charts.load("current", {packages:["corechart"]});
    google.charts.setOnLoadCallback(drawChart);
    google.charts.setOnLoadCallback(drawAnthonyChart);

    function drawChart() {
        var data = google.visualization.arrayToDataTable([
            ['Task', 'Unidades'],
            ['Propatria Carmelita Chacaito',     111],
            ['Casalta Chacaito',      16],
            ['Colinas Bello Monte',  13],
            ['Las Minas', 26],
            ['Baruta Chacaito',    52],
            ['Transporte Lira',     6],
            ['Transporte Libertad',     24],
            ['Carabobo Tiuna',      29]
        ]);

        var options = {
            title: 'Registros',
            pieHole: 0.4,
        };

        var chart = new google.visualization.PieChart(document.getElementById('donutchart'));
        chart.draw(data, options);

    }

    function drawAnthonyChart() {

        // Create the data table for Anthony's pizza.
        var data = new google.visualization.DataTable();
        data.addColumn('string', 'Topping');
        data.addColumn('number', 'Slices');
        data.addRows([
        ['Aptas', 6],
        ['No Aptas', 4]
        ]);

        // Set options for Anthony's pie chart.
        var options = {
            title:'Cédulas Viales',
        };

        // Instantiate and draw the chart for Anthony's pizza.
        var chart = new google.visualization.PieChart(document.getElementById('Anthony_chart_div'));
        chart.draw(data, options);

    }
</script>