<?php 
    include("abre.php");
    $Codigo = $_POST['Codigo'];
    $Nombre = $_POST['NombreDoctor'];
    $Duracion = $_POST['Cita'];
   

    //aca checa bien el nombre de la bae de datos 
    $consulta = "INSERT INTO hospital(Codigo, NombreDoctor , Cita) 
    VALUES ('$Codigo', '$Nombre', '$Duracion')";
    
//usa la sentencia conexion
    if ($conexion->query($consulta) === TRUE) {
        echo "Registro insertado correctamente";
        header("Location: consulta.html");
    } else {
        echo "Error: " . $conexion->error;
    }

?>