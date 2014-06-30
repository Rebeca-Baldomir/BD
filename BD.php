<?php
mysqli_connect("localhost", "root", "", "gdf");

if(mysqli_connect_errno()){
	echo "É, não deu..." . mysqli_connect_error();
}

$create = "INSERT INTO `gdf`(filme, usuario, filme_has_usuario, usuario_has_usuario) VALUES (?,?,?,?)";
$select = "SELECT filme FROM `gdf`";
$update = "UPDATE `gdf` SET filme = $filme_new WHERE filme = ?";
$delete = "DELETE FROM `gdf` WHERE filme = ?";

$result = mysqli_query ($con, $select);
	while($row = mysqli_fetch_array($result)) {
  echo $row['filme'] . $row['usuario'] . $row['filme_has_usuario']. $row['usuario_has_usuario'];
  echo "<br>";
	}
$result2 = mysqli_query($con, $create);
$result3 = mysqli_query($con, $update);
$result4 = mysqli_query($con, $destroy);

mysqli_close($con);
?>