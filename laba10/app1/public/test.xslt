<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0"> 
<xsl:template match="/">
<html>
  <body>
  <h3>Result:</h3>
  <table>
    <xsl:for-each select="integers">
    <tr>
        <td><xsl:value-of select="."></xsl:value-of></td>
    </tr>
    </xsl:for-each>
  </table>
  </body>
  </html>
</xsl:template>
</xsl:stylesheet>