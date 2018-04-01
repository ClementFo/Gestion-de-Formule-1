<!DOCTYPE html>
<html>
	<head>
		<link rel="shortcut icon" href="css/image/favicon.ico">
		<link rel="stylesheet" type ="text/css" href="css/style.css" >
		<a href="Index.html"><img src="css/image/Formula1.png" id="logo"/></a>
		<title>Directeur Technique</title>
	</head>
	
	<body>
		<img src="css/Image/Wallpaper voiture 2.jpg" id="BackPil"/>
		
		<div id="menu">
			<p>
				&nbsp;<a href="Index.html"><input type="button" class="bouton" value="Accueil" ></a>
				&nbsp;<a href="ecurie.php"><input type="button" class="bouton" value="Ecurie" ></a>
				&nbsp;<a href="pilote.php"><input type="button" class="bouton" value="Pilote" ></a>
				&nbsp;<a href="directeurTechnique.php"><input type="button" class="bouton" value="Directeur Technique" ></a>
				&nbsp;<a href="saison.php"><input type="button" class="bouton" value="Saison" ></a>
			</p>
		</div>
		

		<section>
			<center><h1>Ajout Monoplace :</h1></center>
				<form method="post" action="TraitementAjoutMonoplace.php">
					<center><table>
					<tr>
						<td>Nom Monoplace :</td>
						<td><input type="text" name="nomMono"/></td>
					</tr>
					<tr>
						<td>Lien de la photo de la monoplace :</td>
						<td><input type="text" name="LinkMono"/></td>
					</tr>
					<tr>
						<td>Description monoplace :</td>
						<td><input type="text" name="DescMono"/></td>
					</tr>
					</table></center>
					<center><input type="submit" value="Valider"></center>
				</form>
		</section>
		
	</body>
</html>