<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
 
 <xsl:template match="/">
	<html>
		<head><link rel="stylesheet" type="text/css" href="biblioteca.css" /> </head>
		<body>
			<h1>Viewport muy estrecho </h1>
			 <div  id="CambiaImagen"><xsl:apply-templates /></div>
    	</body>
	</html>
  </xsl:template>


  <xsl:template match="libro">
    <div id="Portaretratos">
    	<img>
						<xsl:attribute name="src">
							<xsl:value-of select="foto"></xsl:value-of>
						</xsl:attribute>
    	</img>
    	
    <h2><xsl:value-of select="titulo"/></h2>
  
    <p> Fecha de publicación: <xsl:value-of select="fechaPublicacion/@año"/></p>

     <p>Autor: <xsl:value-of select="autor"/>, Sexo: <xsl:value-of select="sexo"/></p>

    </div>
  </xsl:template>
  
</xsl:stylesheet>