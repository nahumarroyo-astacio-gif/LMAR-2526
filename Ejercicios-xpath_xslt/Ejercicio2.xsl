<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
<html>
<body>
    <head>
    <title>Ejercicio3 css</title>
    <link rel="stylesheet" href="Ejercicio2.xml">
    </head>


<h2>Nombre de los modulos</h2>
<p>-<xsl:value-of select="/ies/modulos/modulo//nombre"/>.</p>


<h2>Nombre modulos</h2>
<xsl:for-each select="/ies/modulos/modulo[ciclo = 'DAM']">
    <p><xsl:value-of select="nombre"/>. </p>
</xsl:for-each>

 
<h2>Modulos que se imparten en el segundo curso</h2>
<xsl:for-each select="/ies/modulos/modulo[curso = 2]">
    <p><xsl:value-of select="nombre"/>. </p>
</xsl:for-each>

<h2>Modulos de menos de 5 horas semanales</h2>
<xsl:for-each select="/ies/modulos/modulo[horasSemanales &lt; 5]">
    <p><xsl:value-of select="nombre"/>. </p>
</xsl:for-each>

<h2>Modulos que se imparten en el primer curso</h2>
<xsl:for-each select="/ies/modulos/modulo[ciclo = 'DAM'][curso = 1]">
    <p><xsl:value-of select="nombre"/>. </p>
</xsl:for-each>

<h2>Modulos de mas de 4 horas semanales</h2>
<xsl:for-each select="/ies/modulos/modulo[horasSemanales > 4]">
    <p><xsl:value-of select="horasSemanales"/>. </p>
</xsl:for-each>


</body>
</html>
</xsl:template>

</xsl:stylesheet>