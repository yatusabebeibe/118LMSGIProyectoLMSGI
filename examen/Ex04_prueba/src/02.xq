(: filepath: /src/02.xquery :)


<html>
	<head>
		<title>Listado de Distribuciones</title>
	</head>
	<body>
		<header>
			<img src="images/logo.jpg" />
			<h1>Distribucion software { @tipo}</h1>
		</header>
		<main>
			<p>Listado de distribuciones de software</p>
			<ul>
			{
				for $x in doc("pruebaExamen")/software-libre/distribuciones/distribucion
				return
					<li>
						<a href="{ $x/web/text()}">{ $x/nombre/text()}</a>
					</li>
			}
			</ul>
		</main>
	</body>
</html>