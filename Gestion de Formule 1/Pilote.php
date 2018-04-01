<!DOCTYPE html>
<html>
	<head>
		<link rel="shortcut icon" href="css/image/favicon.ico">
		<link rel="stylesheet" type ="text/css" href="css/style.css" >
		<a href="Index.html"><img src="css/Image/Formula1.png" id="logo"/></a>
		<title>Pilote</title>
	</head>
	
	<body>
		<img src="css/Image/Wallpaper pilote.jpg" id="BackPil"/>
		
		<div id="histoire">
		</div>
		
		<div id="menu">
			<p>
				&nbsp;<a href="Index.html"><input type="button" class="bouton" value="Accueil" ></a>
				&nbsp;<a href="ecurie.php"><input type="button" class="bouton" value="Ecurie" ></a>
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
						}
					?>
				</select>
				<input type="submit" value="Valider">
			</form>
			<br/><a href="AjoutPilote.php"><input type="submit" value="Ajout" id="ajout"></a><br/><br/>
			
		</section>
		
	</body>
</html>