<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0"
xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
<html>
<body>
<!-- Apartado 1 -->
<h2>Ciclos formativos que se imparten</h2>
<xsl:for-each select="/instituto/ciclos/especialidad//ciclo">
    <p><xsl:value-of select="@id"/>. </p>
</xsl:for-each>

<!-- Apartado 2 -->
<h2>Ciclos formativos de grado medio</h2>
<xsl:for-each select="/instituto/ciclos/especialidad/ciclo[@grado ='Medio']">
    <p><xsl:value-of select="@id"/>. </p>
</xsl:for-each>

<!-- Apartado 3 -->
<h2>Alumnos suspendidos</h2>
<xsl:for-each select="/instituto/notas/clase/alumno[@aprobado = 'NO']">
    <p><xsl:value-of select="nombre"/>. </p>
</xsl:for-each>

<!-- Apartado 4 -->
<h2>Mujeres en ASIR</h2>
<xsl:for-each select="//clase[@nombre='ASIR']//alumno/genero[.='Mujer']">
    <p><xsl:value-of select="count(.)"/>. </p>
</xsl:for-each>

<!-- Apartado 5 -->
<h2>Alumnos suspendidos con cuenta de hotmail</h2>
<xsl:for-each select="/instituto/notas//alumno[@aprobado = 'NO' and contains(email, 'hotmail')]">
    <p><xsl:value-of select="nombre"/>. </p>
</xsl:for-each>

<!-- Apartado 6 -->
<h2>Lista de clase SMR</h2>
<xsl:for-each select="/instituto/notas/clase[@nombre='SMR']/alumno">
    <p><xsl:value-of select="nombre"/>. </p>
</xsl:for-each>

<!-- Apartado 7 -->
<h2>Alumnos que han sacado un 10</h2>
<xsl:for-each select="/instituto/notas//alumno//nota[.=10]">
    <p><xsl:value-of select="../../@nombre"/>. </p>
</xsl:for-each>

<!-- Apartado 8 -->
<h2>Alumnos que han aprobado ASIR</h2>
<xsl:for-each select="//clase[@nombre='ASIR']">
    <p><xsl:value-of select="count(alumno[@aprobado = 'SI'])"/>. </p>
</xsl:for-each>

<!-- Apartado 9 -->
<h2>Porcentaje de aprobados del centro</h2>
<p><xsl:value-of select="(count(/instituto/notas/clase/alumno[@aprobado = 'SI']) div count(/instituto/notas/clase/alumno) *100)"/>.</p>



</body>
</html>
 </xsl:template>

</xsl:stylesheet>