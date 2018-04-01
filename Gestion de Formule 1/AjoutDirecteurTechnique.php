<!DOCTYPE html>
<html>
	<head>
		<link rel="shortcut icon" href="css/image/favicon.ico">
		<link rel="stylesheet" type ="text/css" href="css/style.css" >
		<a href="Index.html"><img src="css/image/Formula1.png" id="logo"/></a>
		<title>Directeur Technique</title>
	</head>
	
	<body>
		<img src="css/Image/Wallpaper directeur 2.jpg" id="BackPil"/>
		
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
			<center><h1>Ajout Directeur Technique :</h1></center>
			
				<form method="post" action="TraitementAjoutDirecteurTechnique.php">
					<center><table>
					<tr>
						<td>Nom directeur technique :</td>
						<td><input type="text" name="nomDirect"/></td>
					</tr>
					<tr>
						<td>Prénom directeur technique :</td>
						<td><input type="text" name="prenomDirect"/></td>
					</tr>
					<tr>
						<td>Nationalité directeur technique :</td>
						<td><input type="text" name="nationDirect"/></td>
					</tr>
					<tr>
						<td>Date naissance directeur technique :</td>
						<td><input type="text" name="DateNaissDirect"/></td>
					</tr>
					<tr>
						<td>Date Décés directeur technique :</td>
						<td><input type="text" name="DateDecesDirect"/></td>
					</tr>
					<tr>
						<td>Lien de la photo du directeur technique :</td>
						<td><input type="text" name="LinkDirect"/></td>
					</tr>
					<tr>
						<td>Description directeur technique :</td>
						<td><input type="text" name="DescDirect"/></td>
					</tr>
					</table></center>
					<center><input type="submit" value="Valider"></center>
				</form>
		</section>
		
	</body>
</html>