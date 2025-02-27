<?php 
    include("abre.php");
    $CodigoInscripcion = $_POST['CodigoAlta'];
    $Fecha = $_POST['Fechadeingreso'];
    $CodigoPaciente = $_POST['CodigoPaciente'];
    $CodigoConsulta = $_POST['CodigoConsulta'];
   

    //aca checa bien el nombre de la bae de datos 
    $consulta = "INSERT INTO inscripcion(CodigoAlta, Fechadeingreso , CodigoPaciente, CodigoConsulta ) 
    VALUES ('$CodigoAlta', '$Fechadeingreso', '$CodigoPaciente', '$CodigoConsulta')";
    
//usa la sentencia conexion
    if ($conexion->query($consulta) === TRUE) {
        header("Location: consulta.html");
    } else {
        echo "Error: " . $conexion->error;
    }

?>