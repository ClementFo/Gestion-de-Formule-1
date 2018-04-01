<!DOCTYPE html>
<html>
	<head>
		<link rel="shortcut icon" href="css/image/favicon.ico">
		<link rel="stylesheet" type ="text/css" href="css/style.css" >
		<a href="Index.html"><img src="css/image/Formula1.png" id="logo"/></a>
		<title>Directeur Technique</title>
	</head>
	
	<body>
		<img src="css/Image/Wallpaper directeur.jpg" id="BackPil"/>
		
		<div id="menu">
			<p>
				&nbsp;<a href="Index.html"><input type="button" class="bouton" value="Accueil" ></a>
				&nbsp;<a href="ecurie.php"><input type="button" class="bouton" value="Ecurie" ></a>
				&nbsp;<a href="pilote.php"><input type="button" class="bouton" value="Pilote" ></a>
				&nbsp;<a href="saison.php"><input type="button" class="bouton" value="Saison" ></a>
				&nbsp;<a href="monoplace.php"><input type="button" class="bouton" value="Monoplace" ></a>
			</p>
		</div>
		

		<section>
			<center><h1>Directeur Technique :</h1></center>
			<form method="post" action="TraitementDirecteurTechnique.php">

				<select name="chercher" id="chercher">
					<?php
						include('ConnectBdd.php');
						$reponse=$bdd->query('SELECT * FROM directeur_tech');
					
						while($donnees = $reponse->fetch())
						{ ?>
							<?php echo '<option value='.$donnees['IDDIRECT'].'>';?>
							<?php echo $donnees['NOMDIRECT']; ?>
							<?php echo $donnees['PRENOMDIRECT'].'</option></br>'; ?>
						<?php
						}
					?>
				</select>
				<input type="submit" value="Valider">
			</form>
			
			<br/><a href="AjoutDirecteurTechnique.php"><input type="submit" value="Ajout" id="ajout"></a><br/><br/>
			
		</section>
		
	</body>
</html>