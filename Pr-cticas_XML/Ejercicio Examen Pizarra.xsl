<?xml version="1.0" encoding="UTF-8"?>


<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>

    <xsl:template match="/">
        <html>
            <head>
                <title>Ejercicio Examen Pizarra.xsl</title>
                  <style>
                    table{
                    border-collapse: collapse;
                    border: solid;
                    }
                    table tr th{
                    background-color:black;
                    color:white;
                    padding: 1em;
                    border: solid;
                    border-color: black;
                    }
                    table tr td{
                    padding: 1em;
                    border: solid;
                    }
                    body{
                    display: flex;
                    flex-direction: column;
                    align-items:center;
                    }
                      div{
                      display: flex;
                    flex-direction: row;
                      margin:5px;
                      }
                    h1{
                    margin: 2em;
                    }
                    p{
                    text-align:center;
                    }
                    tr.top td{
                    background-color: yellow;
                    }
                </style>
            </head>
            <body>
                <h1>
                    <xsl:value-of select="/clase/alumno/nombre"
                </h1>
                <div>
                <h2>
                    <xsl:value-of select="/clase/alumno/apellidos"
                </h2>
                 <h2>
                    <xsl:value-of select="/clase/alumno/dni"
                </h2>
                 <h2>
                    <xsl:value-of select="/clase/alumno/calificaciones"
                </h2>
                </div>
                <table>
                    <tr>
                        <th></th>
                        <th></th>
                    </tr>
                    
                    <tr></tr>
                    
                </table>

            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>
