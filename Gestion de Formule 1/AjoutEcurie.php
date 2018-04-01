<!DOCTYPE html>
<html>
	<head>
		<link rel="shortcut icon" href="css/image/favicon.ico">
		<link rel="stylesheet" type ="text/css" href="css/style.css" >
		<a href="Index.html"><img src="css/image/Formula1.png" id="logo"/></a>
		<title>Directeur Technique</title>
	</head>
	
	<body>
		<img src="css/Image/Wallpaper ecurie 2.jpg" id="BackPil"/>
		
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
			<center><h1>Ajout Ecurie :</h1></center>
				<form method="post" action="TraitementAjoutEcurie.php">
					<center><table>
					<tr>
						<td>Nom écurie :</td>
						<td><input type="text" name="nomEcu"/></td>
					</tr>
					<tr>
						<td>Nationalité écurie :</td>
						<td><input type="text" name="nationEcu"/></td>
					</tr>
					<tr>
						<td>Lien du logo de l'écurie :</td>
						<td><input type="text" name="LinkEcu"/></td>
					</tr>
					<tr>
						<td>Description écurie :</td>
						<td><input type="text" name="DescEcu"/></td>
					</tr>
					</table></center>
					<center><input type="submit" value="Valider"></center>
				</form>
		</section>
		
	</body>
</html>