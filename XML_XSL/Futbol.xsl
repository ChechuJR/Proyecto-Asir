<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform" xmlns:fo="http://www.w3.org/1999/XSL/Format">
	<xsl:template match="/">
		<html>
			<head>
				<title>Web Partidos Liga Santander</title>
				<link rel="stylesheet" href="https://cdnjs.cloudflare.com/ajax/libs/font-awesome/4.7.0/css/font-awesome.min.css"/>
				<style type="text/css">
				@font-face {
							font-family: 'race';	
							src: url('../Estilos/SwipeRaceDemo.ttf');
							}
					body {
							background-color:skyblue;
							}
					a 		{
							color:yellow;
							text-decoration: none;
							font-size: 3em;
							border-style: solid;
							border-color: red;
							margin-left: 5%;
							}
					table	{
							margin-top: 5%;
							width: 80%;
							margin-left: 10%;
							}
					th     {
							color: green;
							background-color: blue;
							font-size: 210%;
							}
					nav   {
							margin-top:5%;
							margin-left: 16%;
							}
					h1    {
							 text-align: center;
							 font-family: race;
							 margin-top: 5%;
							}
					td     {
							background-color: black;
							color: red;
							width: 30%;
							}
					a:hover {
							color: purple;
							}
					.fa 	{
							padding: 20px;
							font-size: 30px;
							width: 30px;
							text-align: center;
							text-decoration: none;
							margin: 5px 2px;
							border-radius: 50%;
							}
  
					.fa:hover {
							opacity: 0.7;
							}
  
					.fa-facebook {
							background: #3B5998;
							color: white;
							}
  
					.fa-twitter {
							background: #55ACEE;
							color: white;
							}
					.fa-youtube {
							background: #bb0000;
							color: white;
							}
				
				</style>
			</head>
			<body>
				<main>
					<h1>Lista de Partidos Liga Santander</h1>
					<header>
						<a href="https://www.facebook.com/" class="fa fa-facebook" target="_blank"></a>
						<a href="https://twitter.com/home?lang=es" class="fa fa-twitter" target="_blank"></a>
						<a href="#" class="fa fa-youtube" target="_blank"></a>
					</header>
					<nav>
                            <a href="../index.html">HOME</a>
                            <a href="../Paginas/tienda.html" target="_blank">TIENDA</a>
                            <a href="https://www.clarin.com/viste/mejores-100-futbolistas-2019-argentinos_0_kdmZcVJk.html" target="_blank">TOP JUGADORES</a>
                            <a href="../Paginas/formulario.html" target="_blank">CONTACTO</a>
					</nav>
					<table border="2">
						<tbody>
							<tr>
								<th>Equipos</th><th>Jugadores</th><th>Espectadores</th><th>Dinero</th><th>Horas</th><th>Estadios</th><th>Fotos</th>
							</tr>
							<xsl:for-each select="//Partido">
							<tr>
								<td>
								<xsl:value-of select="Equipos"></xsl:value-of>
								</td>
								<td>
								<xsl:value-of select="Jugadores"></xsl:value-of>
								</td>
								<td>
								<xsl:value-of select="Espectadores"></xsl:value-of>
								</td>
								<td>
								<xsl:value-of select="Dinero"></xsl:value-of>
								</td>
								<td>
								<xsl:value-of select="Hora"></xsl:value-of>
								</td>
								<td>
								<xsl:value-of select="Estadio"></xsl:value-of>
								</td>
								<td>
								<img width="500px">
                                    <xsl:attribute name="src"><xsl:value-of select="Fotos"/></xsl:attribute>
                                </img>
								</td>
							</tr>
							</xsl:for-each>
						</tbody>
					</table>
				</main>
			</body>
		</html>
	</xsl:template>
</xsl:stylesheet>