<?xml version="1.0"?>



<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>

  
    <xsl:template match="/">
        
        <html>
            
            <head>
                
                <title>repaso 2 xsl.xsl</title>
                <style>
                    div{
                    display:flex;
                     flex-direction:row
                    }
                   div *{
                    padding:5px;
                    
                    }
                </style>
            </head>
            
            <body>
                <xsl:for-each select="/campamento/usuario">
                    <div>
                <h2><xsl:value-of select="nombre"/> </h2>
                <h2><xsl:value-of select="apellidos"/></h2>
                    </div>
                <ol>
                    <xsl:for-each select="actividades/actividad">
                    <li>Actividad "<xsl:value-of select="@id"/>"</li>
                    <ul>
                        <li><xsl:value-of select="nombreACT"/></li>
                         <li><xsl:value-of select="categoria"/></li>
                          <li><xsl:value-of select="tiempo"/></li>
                           <li>USUARIO: <xsl:value-of select="user/@usuario"/></li>
                    </ul>
         </xsl:for-each>

                </ol>
                </xsl:for-each>
            </body>
        </html>
        
    </xsl:template>

</xsl:stylesheet>
