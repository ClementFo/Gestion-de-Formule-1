<?php
include('ConnectBdd.php');
$resultat=$bdd->query("insert into pilote(NOMPILOTE, PRENOMPILOTE, NATIONPILOTE, DATENAISSANCEPILOTE, DATEDECESPILOTE, PHOTOPILOTE, DESCRIPTIONPILOTE) values('".$_POST['nomPilote']."','".$_POST['prenomPilote']."','".$_POST['nationPilote']."','".$_POST['DateNaissPilote']."','".$_POST['DateDecesPilote']."','".$_POST['LinkPilote']."','".$_POST['DescPilote']."');");

if(!$resultat)
{
	echo 'Aucun pilote ajouté';
}
else
{
	mysqli_free_result($resultat);
	mysqli_close($bdd);
	header("Location: Pilote.php");
}

?>