<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : pedido.xsl.xsl
    Created on : 10 de febrero de 2023, 14:22
    Author     : SamuelLeivaÁlvarez
    Description:
        Purpose of transformation follows.
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>

    <!-- TODO customize transformation rules 
         syntax recommendation http://www.w3.org/TR/xslt 
    -->
    <xsl:template match="/">
        <html>
            <head>
                <title>pedido.xsl.xsl</title>
            </head>
            <body>
                <h1>
                    <xsl:value-of select="/pedido/cliente" />
               </h1> 
               <p>
                 <xsl:value-of select="/pedido/contenido" />  
               </p> 
               <p>
                   <xsl:value-of select="/pedido/@id" />
               </p>
               <ul>
                   <xsl:for-each select="/pedido/contenido/articulo" >
                       
                       <li>
                           <xsl:value-of select="." />
                       </li> 
                   </xsl:for-each>
               </ul>
               <dl>
                   <dt> <xsl:value-of select="/pedido/entrega/tipovia" /></dt>
                   <dd><xsl:value-of select="/pedido/entrega/lugar" /></dd>
               </dl>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>
