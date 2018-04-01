<!DOCTYPE html>
<html>
	<head>
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
				&nbsp;<a href="ecurie.php"><input type="button" class="bouton" value="Ecurie" ></a>
				&nbsp;<a href="Pilote.php"><input type="button" class="bouton" value="Pilote" ></a>
				&nbsp;<a href="directeurTechnique.php"><input type="button" class="bouton" value="Directeur Technique" ></a>
				&nbsp;<a href="saison.php"><input type="button" class="bouton" value="Saison" ></a>
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
			<br/><a href="AjoutMonoplace.php"><input type="submit" value="Ajout" id="ajout"><br/><br/>
			
		</section>
		
	</body>
</html>