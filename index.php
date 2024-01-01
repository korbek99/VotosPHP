<!DOCTYPE html>
<html>
<head>
    <title>Votacion</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link rel="stylesheet" href="css/Style.css"/>
    <script src="js/funciones.js"></script>
</head>
<body>
<?php include 'menu_principal.php';?>
<div class="container">
 <form method="post" action="Votaciones/ingresoVoto.php">  
 <table>
  <tr>
    <td><label for="nombre">Nombre y Apellido</label></td>
    <td><input type="text" id="nombres" name="nombres" required></td>
  </tr>
  <tr>
    <td><label for="alias">Alias</label></td>
    <td><input type="text" id="alias" name="alias" onchange="validarAlias()" required></td>
    <td></td>
  </tr>
  <tr>
    <td><label for="rut">Rut</label></td>
    <td><input type="text" id="rut" name="rut" onchange="validarRut()" required></td>
    <td></td>
  </tr>
  <tr>
    <td><label for="email">Email</label></td>
    <td><input type="text" id="email" name="email" required></td>
    <td></td>
  </tr>
  <tr>
    <td><label for="regionlabel">Region</label></td>
    <td>   
    <select type="select" name="region" id="region" onchange="cargarComunas()" required>
    <?php include 'Conexion/ConexionDB.php';?>
    <?php
    
    $query = "SELECT `RegionID`, `NombreCorto`, `NombreRegion` FROM `Region`";
    $result = $conn->query($query);

    while ($row = $result->fetch_assoc()) {
        $selected = (isset($_GET["regionID"]) && $_GET["regionID"] == $row["RegionID"]) ? 'selected' : '';
    
        echo '<option value="' . $row["RegionID"] . '" ' . $selected . '>' . $row["NombreRegion"] . '</option>';
    }

    $conn->close();
    ?>
</select>

        </td>
    <td></td>
  </tr>
  <tr>
    <td><label for="comuna">Comuna</label></td>
    <td><select type="select" name="comuna" id="comuna" required>
            <?php include 'Conexion/ConexionDB.php';?>
            <?php

        if (isset($_GET["regionID"])) {
            $regionID = $_GET["regionID"];
            $query = "SELECT `ComunaID`, `NombreComuna` FROM `Comuna` WHERE `RegionID` = $regionID";
        } else {
            $query = "SELECT `ComunaID`,`NombreComuna`,`RegionID` FROM `Comuna`";
        }
            
            $result = $conn->query($query);

            while ($row = $result->fetch_assoc()) {
                echo '<option value="' . $row["ComunaID"] . '">' . $row["NombreComuna"] . '</option>';
            }

            $conn->close();
            ?>
        </select>
        </td>
    <td></td>
  </tr>
  <tr>
    <td><label for="candidato">Candidato</label></td>
    <td><select type="select" name="candidato" id="candidato" required>
            <?php include 'Conexion/ConexionDB.php';?>
            <?php
            $query = "SELECT `CandidatoID`,`NombreCandidato`,`NombrePartido` FROM `Candidato";
            $result = $conn->query($query);

            while ($row = $result->fetch_assoc()) {
                echo '<option value="' . $row["CandidatoID"] . '">' . $row["NombreCandidato"] . '</option>';
            }

            $conn->close();
            ?>
        </select>
        </td>
    <td></td>
  </tr>
  </table> 
  <table> 
  <tr>
    <td><label for="comoseentero">Como se entero de Nosotros</label></td>
    <td>Web<input type="checkbox" id="web" name="web" value="web"></td>
    <td>TV<input type="checkbox" id="tv" name="tv" value="tv"></td>
    <td>Redes Sociales<input type="checkbox" id="social" name="social" value="social"></td>
    <td>Amigo<input type="checkbox" id="amigo" name="amigo" value="amigo"></td>
    <td></td>
  </tr>
  </table> 
  <table> 
  <tr>
    <td><input type="submit" value="Votar"></td>
  </tr>
</table>    
</form>
</div>
<?php include 'footer_principal.php';?>
</body>
</html>
