<?xml version="1.0" encoding="UTF-8"?>
<xsl:transform xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="3.0">

   <xsl:output method="text"/>

   <xsl:template match="node()">
      <xsl:apply-templates select="node()"/>
   </xsl:template>

   <xsl:template match="section">
      <xsl:if test="@id">
         <xsl:value-of select="string-join((ancestor-or-self::section/@id) / ., ' / ')"/>
         <xsl:text> - </xsl:text>
         <xsl:value-of select="normalize-space(*[1])"/>
         <xsl:text>&#10;&#10;</xsl:text>
      </xsl:if>
      <xsl:apply-templates select="node()"/>
   </xsl:template>

   <xsl:template match="pre">
      <xsl:text>>> </xsl:text>
      <xsl:value-of select="string-join((@class, @id), ' - ')"/>
      <xsl:text>:&#10;</xsl:text>
      <xsl:value-of select="."/>
      <xsl:text>&#10;&#10;</xsl:text>
   </xsl:template>

</xsl:transform>
