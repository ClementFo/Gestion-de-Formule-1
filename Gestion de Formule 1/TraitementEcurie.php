<!DOCTYPE html>
<html>
	<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<link rel="shortcut icon" href="css/image/favicon.ico">
	<link rel="stylesheet" type ="text/css" href="css/style.css" >
	<a href="Index.html"><img src="css/Image/Formula1.png" id="logo"/></a>
	
	<title>Ecuries</title>
	</head>
	
	<body>
		<img src="css/Image/Wallpaper ecurie.jpg" id="BackPil"/>
		
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
			<center><h1>Ecuries :</h1></center>
			<form method="post" action="TraitementEcurie.php">
				<select name="chercher" id="chercher">
					<?php
						include('ConnectBdd.php');
						$reponse=$bdd->query('SELECT * FROM ecurie');
					
						while($donnees = $reponse->fetch())
						{ ?>
							<?php echo '<option value='.$donnees['IDECU'].'>';?><?php echo $donnees['NOMECU'].'</option></br>'; ?>
						<?php
						$logo=$donnees['NOMECU'];
						}
					?>
				</select>
				<input type="submit" value="Valider">
			</form>
			
			<?php			
			include('ConnectBdd.php');
			$chercher=$_POST['chercher'];
			$reponse = $bdd->prepare('SELECT * FROM ecurie WHERE IDECU=:chercher');
			$reponse->bindvalue(':chercher',$chercher,PDO::PARAM_INT);
			$reponse->execute();
			
			while($donnees = $reponse -> fetch())
			{
			?>
				<article>
			<?php
				echo("<u><h3>Nom Ecurie : </h3></u><p>".$donnees['NOMECU']."</p>");
				echo("<u><h3>Pays Ecurie : </h3></u><p>".$donnees['PAYSECU']."</p>");
				echo("<u><h3>Description Ecurie : </h3></u><p>".$donnees['DESCRIPTIONECU']."</p>");
			?>
				</article>
				<aside>
			<?php
				echo("<u><h3>Logo Ecurie : </h3></u><img src=".$donnees['LOGOECU']." id=logoEcu/>");
			?>
				</aside>
			<?php
			}
			$reponse->closeCursor();
			?>
		</section>
	</body>
</html>