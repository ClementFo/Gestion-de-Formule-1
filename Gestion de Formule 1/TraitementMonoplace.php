<!DOCTYPE html>
<html>
	<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<link rel="shortcut icon" href="css/image/favicon.ico">
	<link rel="stylesheet" type ="text/css" href="css/style.css" >
	<a href="Index.html"><img src="css/Image/Formula1.png" id="logo"/></a>
	
	<title>Monoplace</title>
	</head>
	
	<body>
		<img src="css/Image/Wallpaper voiture.jpg" id="BackPil"/>
		
		<div id="menu">
			<p>
				&nbsp;<a href="Index.html"><input type="button" class="bouton" value="Accueil" ></a>
				&nbsp;<a href="pilote.php"><input type="button" class="bouton" value="Pilote" ></a>
				&nbsp;<a href="directeurTechnique.php"><input type="button" class="bouton" value="Directeur Technique" ></a>
				&nbsp;<a href="saison.php"><input type="button" class="bouton" value="Saison" ></a>
				&nbsp;<a href="monoplace.php"><input type="button" class="bouton" value="Monoplace" ></a>
			</p>
		</div>
		
		<section>
			<center><h1>Monoplace :</h1></center>
			<form method="post" action="TraitementMonoplace.php">
				<select name="chercher" id="chercher">
					<?php
						include('ConnectBdd.php');
						$reponse=$bdd->query('SELECT * FROM monoplace');
					
						while($donnees = $reponse->fetch())
						{ ?>
							<?php echo '<option value='.$donnees['IDMONO'].'>';?><?php echo $donnees['NOMMONO'].'</option></br>'; ?>
						<?php
						}
					?>
				</select>
				<input type="submit" value="Valider">
			</form>
			
			<?php			
			include('ConnectBdd.php');
			$chercher=$_POST['chercher'];
			$reponse = $bdd->prepare('SELECT * FROM monoplace WHERE IDMONO=:chercher');
			$reponse->bindvalue(':chercher',$chercher,PDO::PARAM_INT);
			$reponse->execute();
			
			while($donnees = $reponse -> fetch())
			{
			?>
				<article>
			<?php
				echo("<u><h3>Nom Monoplace : </h3></u><p>".$donnees['NOMMONO']."</p>");
				echo("<u><h3>Description Monoplace : </h3></u><p>".$donnees['DESCRIPTIONMONO']."</p>");
			?>
				</article>
				<aside>
			<?php
			if($donnees['PHOTOMONO']==NULL)
			{
				echo("<u><h3>Logo Monoplace : </h3></u><p>Nous n'avons pas de photo</p>");
			}
			else
			{
				echo("<u><h3>Logo Monoplace : </h3></u><img src=".$donnees['PHOTOMONO']." id=logoEcu/>");
			}
			?>
				</aside>
			<?php
			}
			$reponse->closeCursor();
			?>
		</section>
	</body>
</html>