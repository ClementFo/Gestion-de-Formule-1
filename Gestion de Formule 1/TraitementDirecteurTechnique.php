<!DOCTYPE html>
<html>
	<head>
	<meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
	<link rel="shortcut icon" href="css/image/favicon.ico">
	<link rel="stylesheet" type ="text/css" href="css/style.css" >
	<a href="Index.html"><img src="css/Image/Formula1.png" id="logo"/></a>
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
							<?php echo '<option value='.$donnees['IDDIRECT'].'>';?><?php echo $donnees['NOMDIRECT']; ?><?php echo $donnees['PRENOMDIRECT'].'</option></br>'; ?>
						<?php
						$logo=$donnees['NOMDIRECT'];
						}
					?>
				</select>
				<input type="submit" value="Valider">
			</form>
			
			<?php			
			include('ConnectBdd.php');
			$chercher=$_POST['chercher'];
			$reponse = $bdd->prepare('SELECT * FROM directeur_tech WHERE IDDIRECT=:chercher');
			$reponse->bindvalue(':chercher',$chercher,PDO::PARAM_INT);
			$reponse->execute();
			
			while($donnees = $reponse -> fetch())
			{
			?>
				<article>
			<?php
				echo("<u><h3>Nom du directeur technique : </h3></u><p>".$donnees['NOMDIRECT']."</p>");
				echo("<u><h3>Prenom du directeur technique : </h3></u><p>".$donnees['PRENOMDIRECT']."</p>");
				echo("<u><h3>Nationalité du directeur technique : </h3></u><p>".$donnees['NATIONDIRECT']."</p>");
				
				if(($donnees['DATENAISSANCEDIRECT']==NULL) && ($donnees['DATEDECESDIRECT']==NULL) && ($donnees['DESCRIPTIONDIRECT']==NULL))
				{
					echo("<br/><br/>Nous n'avons pas d'autres informations sur ce directeur technique");
				}
				else
				{
					echo("<u><h3>Date de naissance du directeur technique : </h3></u><p>".$donnees['DATENAISSANCEDIRECT']."</p>");
					
					if($donnees['DATEDECESDIRECT']==NULL)
					{
						echo("<u><h3>Date de décès du Directeur technique : </h3></u><p>Ce directeur technique est encore vivant</p>");
					}
					else
					{
						echo("<u><h3>Date de décés du directeur technique : </h3></u><p>".$donnees['DATEDECESDIRECT']."</p>");
					}
					
					echo("<u><h3>Description directeur technique : </h3></u><p>".$donnees['DESCRIPTIONDIRECT']."</p>");
				}
			?>
				</article>
				<aside>
			<?php
				if($donnees['PHOTODIRECT']==NULL)
				{
					echo("<u><h3>Photo du directeur technique : </h3></u><p>Nous n'avons pas de photo</p>");
				}
				else
				{
					echo("<u><h3>Photo du directeur technique : </h3></u><img src=".$donnees['PHOTODIRECT']." id=logoEcu/>");
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