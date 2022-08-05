<?xml version="1.0" encoding="UTF-8"?>

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform"
    xmlns:xs="http://www.w3.org/2001/XMLSchema"
    xmlns:tei="http://www.tei-c.org/ns/1.0"
    exclude-result-prefixes="xs"
    version="2.0">
    
    <xsl:output method="html"/>
    <xsl:template match="//tei:titleStmt">
    <html>
        <head>            
            <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.3/css/bootstrap.min.css"/>
            <meta charset="UTF-8"/>
        </head>
        
        <body>
            <h1>
                <xsl:value-of select="tei:title"/>
            </h1>
          
         </body>
    </html>
    </xsl:template>
     
            
    
    <xsl:template match="tei:text">
        <table border="1">
            <tr bgcolor="blue">                      
                <th>ed41</th>
                <th>ed45</th>
            </tr>
            <xsl:for-each select="//tei:app">
                <tr>
                    <td><xsl:value-of select="tei:rdg[@wit='ed41']"/></td>
                    <td><xsl:value-of select="tei:rdg[@wit='ed45']"/></td>
                </tr>
            </xsl:for-each>
        </table>  
    </xsl:template>       
   
</xsl:stylesheet>