<?xml version="1.0" encoding="Shift_JIS" ?>
<xsl:stylesheet version="1.0"
		xmlns:xsl="http://www.w3.org/1999/XSL/Transform" > 
  <xsl:output
     method = "html"
     indent ="yes"
     doctype-public = "-//W3C//DTD HTML 4.01//EN"
     doctype-system = "http://www.w3.org/TR/html4/strict.dtd"
/>
  <xsl:template match="/itemlist"> 
    <html lang="ja">
      <head>
	<title>��8��V���f�����K�[�����I������</title>
      </head>
      <body>
	<table border="1">
	  <thead>
	    <tr>
	      <th>����</th>
	      <xsl:apply-templates select="item[1]/data" mode="head"/>
	    </tr>
	  </thead>
	  <tbody>	
	    <xsl:apply-templates select="item" mode="data"/>
	  </tbody>
	</table>
      </body>
    </html>
  </xsl:template> 
  <xsl:template match="data" mode="head" >
  <th><xsl:value-of select="@name"/></th>
  </xsl:template>
  <xsl:template match="item" mode="data">
    <tr>
      <th>
	<xsl:number format="1"/>��
      </th>
      <xsl:apply-templates select="data" />
    </tr>
  </xsl:template>
  <xsl:template match="data"> 
    <td>
      <xsl:value-of select="@value"/>
    </td>
  </xsl:template> 
</xsl:stylesheet>