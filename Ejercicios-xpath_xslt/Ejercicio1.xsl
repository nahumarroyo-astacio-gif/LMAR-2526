<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
<html>
<body>

<h2>Nombre del instituto</h2>
<p>-<xsl:value-of select="/ies/nombre[1]"/>.</p>

<h2>Web del instituto</h2>
<p>-<xsl:value-of select="/ies/web"/>.</p>

<h2>Nombre de los ciclos</h2>
<p>-<xsl:value-of select="/ies/ciclos/ciclo/nombre[1]"/>.</p>
<p>-<xsl:value-of select="/ies/ciclos/ciclo[2]/nombre"/>.</p>
 
<h2>id de los ciclos</h2>
<xsl:for-each select="/ies/ciclos/ciclo">
    <p><xsl:value-of select="@id"/>. </p>
</xsl:for-each>


<h2>Año de las ordenes de titulo</h2>
<xsl:for-each select="/ies/ciclos/ciclo/ordenTitulo">
    <p><xsl:value-of select="@año"/>. </p>
</xsl:for-each>


<h2>Ciclos formativos grado medio</h2>
<p>-<xsl:value-of select="/ies/ciclos/ciclo"/>.</p>


<h2>Ciclos foormativos anteriores a 2010</h2>
<p>-<xsl:value-of select="/ies/ciclos/ciclo[ordenTitulo/@año &lt; 2010]"/>.</p> 

<h2>Nombre ciclos 2009 o 2011</h2>
<xsl:for-each select="/ies/ciclos/ciclo[ordenTitulo/@año = 2009 or ordenTitulo/@año = 2011]">
<p>-<xsl:value-of select="nombre"/>.</p> 
</xsl:for-each>



</body>
</html>
</xsl:template>

</xsl:stylesheet>