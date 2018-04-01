<!DOCTYPE html>
<html>
	<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<link rel="shortcut icon" href="css/image/favicon.ico">
	<link rel="stylesheet" type ="text/css" href="css/style.css" >
	<a href="Index.html"><img src="css/Image/Formula1.png" id="logo"/></a>
	<title>Pilote</title>
	</head>
	
	<body>
		<img src="css/Image/Wallpaper pilote.jpg" id="BackPil"/>
				
		<div id="menu">
			<p>
				&nbsp;<a href="Index.html"><input type="button" class="bouton" value="Accueil" ></a>
				&nbsp;<a href="Ecurie.php"><input type="button" class="bouton" value="Ecurie" ></a>
				&nbsp;<a href="directeurTechnique.php"><input type="button" class="bouton" value="Directeur Technique" ></a>
				&nbsp;<a href="saison.php"><input type="button" class="bouton" value="Saison" ></a>
				&nbsp;<a href="monoplace.php"><input type="button" class="bouton" value="Monoplace" ></a>
			</p>
		</div>
		
		<section>
			<center><h1>Pilote :</h1></center>
			<form method="post" action="TraitementPilote.php">
				<select name="chercher" id="chercher">
					<?php
						include('ConnectBdd.php');
						$reponse=$bdd->query('SELECT * FROM pilote');
					
						while($donnees = $reponse->fetch())
						{ ?>
							<?php echo '<option value='.$donnees['IDPILOTE'].'>';?><?php echo $donnees['NOMPILOTE'].' '.$donnees['PRENOMPILOTE'].'</option></br>'; ?>
						<?php
						$logo=$donnees['NOMPILOTE'];
						}
					?>
				</select>
				
				<input type="submit" value="Valider">
			</form>
			
			<?php			
			include('ConnectBdd.php');
			$chercher=$_POST['chercher'];
			$reponse = $bdd->prepare('SELECT * FROM pilote WHERE IDPILOTE=:chercher');
			$reponse->bindvalue(':chercher',$chercher,PDO::PARAM_INT);
			$reponse->execute();
			
			while($donnees = $reponse -> fetch())
			{
			?>
				<article>
			<?php
				echo("<u><h3>Nom Pilote : </h3></u><p>".$donnees['NOMPILOTE']."</p>");
				echo("<u><h3>Prénom Pilote : </h3></u><p>".$donnees['PRENOMPILOTE']."</p>");
				echo("<u><h3>Nationalité Pilote : </h3></u><p>".$donnees['NATIONPILOTE']."</p>");
				echo("<u><h3>Date de Naissance du Pilote : </h3></u><p>".$donnees['DATENAISSANCEPILOTE']."</p>");
				
				if($donnees['DATEDECESPILOTE']== NULL)
				{
					echo("<u><h3>Date de Décès du Pilote : </h3></u><p>Ce pilote est encore vivant</p>");
				}
				else
				{
					echo("<u><h3>Date de Décès du Pilote : </h3></u><p>".$donnees['DATEDECESPILOTE']."</p>");
				}
				
				echo("<u><h3>Description Pilote : </h3></u><p>".$donnees['DESCRIPTIONPILOTE']."</p>");
			?>
				</article>
				<aside>
			<?php
				echo("<u><h3>Photo du Pilote : </h3></u><img src=".$donnees['PHOTOPILOTE']." id=logoEcu/>");
			?>
				</aside>
			<?php
			}
			$reponse->closeCursor();
			?>
		</section>
	</body>
</html>