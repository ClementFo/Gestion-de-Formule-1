<html>
	<head>
		<link rel="shortcut icon" href="css/image/favicon.ico">
		<link rel="stylesheet" type ="text/css" href="css/style.css" >
			<a href="Index.html"><img src="css/image/Formula1.png" id="logo"/></a>
		<title>Les saisons de F1</title>
		
	</head>
	
	<body>
		<img src="css/Image/Wallpaper saison.jpg" id="BackPil"/>
		
		
		<div id="saison">
			<table border="0">
			<thead> 
				<tr>
					<td id="CelGris">Saison</td>
					<td>Le Champion</td>
					<td id="CelGris">L'écurie du champion</td>
				</tr>
			</thead>
			<?php
				include('ConnectBdd.php');
				$reponse=$bdd->query('SELECT ANNEESAISON,NOMPILOTE,NOMECU FROM saison,pilote,ecurie WHERE saison.CHAMPIDPILOTE = pilote.IDPILOTE AND saison.CHAMPECUPILOTE = ecurie.IDECU');


				if(!$reponse)
				{ 
					echo ('résultat vide');
				}
				else
				{
					while($donnees=$reponse->fetch())
					{
						$annee=$donnees['ANNEESAISON']; 
						$pilote=$donnees['NOMPILOTE'];
						$ecurie=$donnees['NOMECU'];
						echo '<tr><td id="CelGris">'.$annee.'</td><td>'.$pilote.'</td><td id="CelGris">'.$ecurie.'</td>'; 
					}
					echo '</table>';
				}
				$reponse->closeCursor();
			?>
		</div>
		
		<div id="menu">
			<p>
				&nbsp;<a href="Index.html"><input type="button" class="bouton" value="Accueil" ></a>
				&nbsp;<a href="ecurie.php"><input type="button" class="bouton" value="Ecurie" ></a>
				&nbsp;<a href="pilote.php"><input type="button" class="bouton" value="Pilote" ></a>
				&nbsp;<a href="directeurTechnique.php"><input type="button" class="bouton" value="Directeur Technique" ></a>
				&nbsp;<a href="monoplace.php"><input type="button" class="bouton" value="Monoplace" ></a>
			
			</p>
		</div>
	</body>
</html>