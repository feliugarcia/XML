<?xml version="1.0" encoding="ISO-8859-1"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
<!-- Este es nuestro primer archivo XSL -->
<xsl:template match="/">
<!-- Aqui comienza la plantilla -->
<html>
<body>

<h1>
	<xsl:value-of select="/Pag/Titulo" />
</h1>
<p>
	<xsl:value-of select="/Pag/PagDesc" />
</p>
<table border="1">
      <tr>
        <th>Nombre</th>
        <th>Apellido</th>
	<th>Edad</th>
	<th>Articulos</th>
      </tr>
      <xsl:for-each select="Pag/PersonaLista/Persona"> 
      <xsl:sort select="Apellido"/>
      <tr>
<!-- Es importante dejar el espacio que hay entre el valor del atributo value of select
y la barra / que cierra el tag -->

        <td><xsl:value-of select="Nombre" /></td>
        <td><xsl:value-of select="Apellido" /></td>
	<td><xsl:value-of select="Edad" /></td>
	<td><xsl:value-of select="Articulos" /></td>
      </tr>
      </xsl:for-each>
    </table>
</body>
</html>
</xsl:template>
</xsl:stylesheet>
