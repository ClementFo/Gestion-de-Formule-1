<?php
include('ConnectBdd.php');
$resultat=$bdd->query("insert into ecurie(NOMECU, NATIONECU, LOGOECU, DESCRIPTIONECU) values('".$_POST['nomEcu']."','".$_POST['nationEcu']."','".$_POST['LinkEcu']."','".$_POST['DescEcu']."');");

if(!$resultat)
{
	echo 'Aucune écurie ajouté';
}
else
{
	mysqli_free_result($resultat);
	mysqli_close($bdd);
	header("Location: Ecurie.php");
}

?>