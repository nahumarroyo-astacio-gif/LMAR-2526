<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">

<xsl:template match="/">
<html>
<head>
    <title>Ejercicio 3 - Tablas CSS</title>
    <style>
        body { font-family: Arial, sans-serif; margin: 20px; color: #333; }
        h2 { color: #2c3e50; border-bottom: 2px solid #3498db; padding-bottom: 5px; margin-top: 30px; }
        table { width: 100%; border-collapse: collapse; margin-top: 10px; box-shadow: 0 2px 3px rgba(0,0,0,0.1); }
        th, td { padding: 12px; text-align: left; border: 1px solid #ddd; }
        th { background-color: #3498db; color: white; }
        tr:nth-child(even) { background-color: #f9f9f9; }
        tr:hover { background-color: #f1f1f1; }
    </style>
</head>
<body>

    <h2>Nombre de los modulos</h2>
    <table>
        <tr><th>Módulo</th></tr>
        <xsl:for-each select="/ies/modulos/modulo">
            <tr><td><xsl:value-of select="nombre"/></td></tr>
        </xsl:for-each>
    </table>

    <h2>Nombre modulos (Ciclo DAM)</h2>
    <table>
        <tr><th>Módulo</th><th>Ciclo</th></tr>
        <xsl:for-each select="/ies/modulos/modulo[ciclo = 'DAM']">
            <tr>
                <td><xsl:value-of select="nombre"/></td>
                <td><xsl:value-of select="ciclo"/></td>
            </tr>
        </xsl:for-each>
    </table>

    <h2>Modulos que se imparten en el segundo curso</h2>
    <table>
        <tr><th>Módulo</th><th>Curso</th></tr>
        <xsl:for-each select="/ies/modulos/modulo[curso = 2]">
            <tr>
                <td><xsl:value-of select="nombre"/></td>
                <td><xsl:value-of select="curso"/></td>
            </tr>
        </xsl:for-each>
    </table>

    <h2>Modulos de menos de 5 horas semanales</h2>
    <table>
        <tr><th>Módulo</th><th>Horas</th></tr>
        <xsl:for-each select="/ies/modulos/modulo[horasSemanales &lt; 5]">
            <tr>
                <td><xsl:value-of select="nombre"/></td>
                <td><xsl:value-of select="horasSemanales"/>h</td>
            </tr>
        </xsl:for-each>
    </table>

    <h2>Modulos que se imparten en el primer curso (DAM)</h2>
    <table>
        <tr><th>Módulo</th><th>Ciclo</th><th>Curso</th></tr>
        <xsl:for-each select="/ies/modulos/modulo[ciclo = 'DAM'][curso = 1]">
            <tr>
                <td><xsl:value-of select="nombre"/></td>
                <td>DAM</td>
                <td><xsl:value-of select="curso"/></td>
            </tr>
        </xsl:for-each>
    </table>

    <h2>Modulos de mas de 4 horas semanales</h2>
    <table>
        <tr><th>Módulo</th><th>Horas Semanales</th></tr>
        <xsl:for-each select="/ies/modulos/modulo[horasSemanales > 4]">
            <tr>
                <td><xsl:value-of select="nombre"/></td>
                <td><xsl:value-of select="horasSemanales"/></td>
            </tr>
        </xsl:for-each>
    </table>

</body>
</html>
</xsl:template>
</xsl:stylesheet>