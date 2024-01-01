
<?php
include '../Conexion/ConexionDB.php';

if ($_SERVER["REQUEST_METHOD"] == "POST") {
    $nombres = $_POST["nombres"];
    $alias = $_POST["alias"];
    $rut = $_POST["rut"];
    $email = $_POST["email"];
    $regionID = $_POST["region"];
    $comunaID = $_POST["comuna"];
    $candidatoID = $_POST["candidato"];

    $web = isset($_POST["web"]) ? 1 : 0;
    $tv = isset($_POST["tv"]) ? 1 : 0;
    $social = isset($_POST["social"]) ? 1 : 0;
    $amigo = isset($_POST["amigo"]) ? 1 : 0;

    $rutExistenteQuery = "SELECT Rut FROM Persona WHERE Rut = '$rut'";
    $result = $conn->query($rutExistenteQuery);

    if ($result->num_rows > 0) {
        header("Location: ../Votaciones/yaVoto.php");
    } else {
        $insertQuery = "INSERT INTO Persona (NombreCompleto, Alias, Rut, Email, RegionID, ComunaID, CandidatoID, Web, Tv, Social, Friends) 
        VALUES ('$nombres', '$alias', '$rut', '$email', $regionID, $comunaID, $candidatoID, $web, $tv, $social, $amigo)";

            if ($conn->query($insertQuery) === TRUE) {
            header("Location: ../Votaciones/ingresoExitoso.php");
            } else {
            header("Location: ../Votaciones/errorVotacion.php");
            }
    }


   

    $conn->close();
}
?>

