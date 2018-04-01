<?php
include('ConnectBdd.php');
$resultat=$bdd->query("insert into monoplace(NOMMONO, PHOTOMONO, DESCRIPTIONMONO) values('".$_POST['nomMono']."','".$_POST['LinkMono']."','".$_POST['DescMono']."');");

if(!$resultat)
{
	echo 'Aucune monoplace ajouté';
}
else
{
	mysqli_free_result($resultat);
	mysqli_close($bdd);
	header("Location: Monoplace.php");
}

?>