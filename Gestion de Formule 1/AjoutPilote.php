<!DOCTYPE html>
<html>
	<head>
		<link rel="shortcut icon" href="css/image/favicon.ico">
		<link rel="stylesheet" type ="text/css" href="css/style.css" >
		<a href="Index.html"><img src="css/image/Formula1.png" id="logo"/></a>
		<title>Directeur Technique</title>
	</head>
	
	<body>
		<img src="css/Image/Wallpaper pilote 2.jpg" id="BackPil"/>
		
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
			<center><h1>Ajout Pilote :</h1></center>
			
				<form method="post" action="TraitementAjoutPilote.php">
					<center><table>
					<tr>
						<td>Nom pilote :</td>
						<td><input type="text" name="nomPilote"/></td>
					</tr>
					<tr>
						<td>Prénom pilote :</td>
						<td><input type="text" name="prenomPilote"/></td>
					</tr>
					<tr>
						<td>Nationalité pilote :</td>
						<td><input type="text" name="nationPilote"/></td>
					</tr>
					<tr>
						<td>Date naissance du pilote :</td>
						<td><input type="text" name="DateNaissPilote"/></td>
					</tr>
					<tr>
						<td>Date Décés du pilote :</td>
						<td><input type="text" name="DateDecesPilote"/></td>
					</tr>
					<tr>
						<td>Lien de la photo du pilote :</td>
						<td><input type="text" name="LinkPilote"/></td>
					</tr>
					<tr>
						<td>Description pilote :</td>
						<td><input type="text" name="DescPilote"/></td>
					</tr>
					</table></center>
					<center><input type="submit" value="Valider"></center>
				</form>
		</section>
		
	</body>
</html>