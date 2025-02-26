<?php 
    include("abre.php");
    $CodigoInscripcion = $_POST['CodigoAlta'];
    $Fecha = $_POST['Fechadeingreso'];
    $CodigoAlumno = $_POST['CodigoPaciente'];
    $CodigoCarrera = $_POST['CodigoConsulta'];
   

    //aca checa bien el nombre de la bae de datos 
    $consulta = "INSERT INTO inscripcion(CodigoAlta, Fechadeingreso , CodigoPaciente, CodigoConsulta ) 
    VALUES ('$CodigoAlta', '$Fechadeingreso', '$CodigoPaciente', '$CodigoConsulta')";
    
//usa la sentencia conexion
    if ($conexion->query($consulta) === TRUE) {
        echo "Registro insertado correctamente";
        header("Location: consulta.html");
    } else {
        echo "Error: " . $conexion->error;
    }

?>