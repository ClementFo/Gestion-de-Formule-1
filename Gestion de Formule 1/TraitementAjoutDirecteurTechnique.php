<?php
include('ConnectBdd.php');
$resultat=$bdd->query("insert into directeur_tech(NOMDIRECT, PRENOMDIRECT, NATIONDIRECT, DATENAISSANCEDIRECT, DATEDECESDIRECT, PHOTODIRECT, DESCRIPTIONDIRECT) values('".$_POST['nomDirect']."','".$_POST['prenomDirect']."','".$_POST['nationDirect']."','".$_POST['DateNaissDirect']."','".$_POST['DateDecesDirect']."','".$_POST['LinkDirect']."','".$_POST['DescDirect']."');");

if(!$resultat)
{
	echo 'aucun directeur technique ajouté';
}
else
{
	mysqli_free_result($resultat);
	mysqli_close($bdd);
	header("Location: directeurTechnique.php");
}

?>