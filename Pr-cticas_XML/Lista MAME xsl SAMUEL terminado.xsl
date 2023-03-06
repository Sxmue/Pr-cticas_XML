<?xml version="1.0"?>

<!--
    Document   : Lista MAME xsl.xsl
    Created on : 27 de febrero de 2023, 16:46
    Author     : samu_
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
                <title>Lista MAME xsl.xsl</title>
                <style>
                    body{
                    background-image:url(https://i.pinimg.com/originals/02/bd/41/02bd412d59d0bc94084ce430edb6bd07.jpg);
                    margin:0px;
                    font-family: 'Montserrat', sans-serif;
                    }
                    <!--Aqui empieza la cabecera de la imagen de MAME -->
                    div.cabecera {
                    display:flex;
                    text-align:center;
                    justify-content:center;
                    align-items:center;
                    background-image: url(https://wallpaperboat.com/wp-content/uploads/2019/06/arcade-16.jpg);
                    background-size:cover;
                    width:100%;
                    background-position: center center;
                    }
                    <!--Aqui empiezan los dos parrafitos de introduccion -->
                    <!--div.introduccion es el contenedor principal -->
                    div.introduccion{
                    max-width:100vw;
                    display:flex;
                    justify-content:center;
                    text-align:center;
                    align-items:center;
                    flex-direction:row;
                    margin-top:2px;
                    }
                    <!-- Esta es la primera cajita que incluye la imagen y el titulo de lista de videojuegos mame-->
                    div.introduccion div.uno{
                    text-align:center;
                    justify-content:center;
                    align-items:center;
  
                    }
                    div.introduccion div.uno p{
                    border-radius: 30px;
                    box-shadow: 5px 5px 15px 5px #000000;
                    background-color:white;
                    padding:30px;
                    font-size:30px;
                    }
                    div.introduccion div.uno img{
                    width:280px;
                    height:250px;
                    border-radius: 30px;
                    box-shadow: 5px 5px 15px 5px #000000;
                    background-color:white;
                    padding:3px;
                    }
                    <!--Aqui el segundo parrafo del div.introduccion -->
                    div.introduccion div.dos{
                    margin:5px;
                    margin-left:250px;
                    width:600px;
                    text-align:center;
                    justify-content:center;
                    align-items:center;
                    }
                    div.introduccion div.dos p{
                    box-shadow: 5px 5px 15px 5px #000000;
                    border-radius: 30px;
                    background-color:white;
                    padding:30px;
                    font-size:30px;
                    margin-top:33px;
                    }
                    <!--Aqui el div del elemento table -->
                    div.table{
                    margin-top:40px;
                    display:flex;
                    flex-direction:column;
                    text-align:center;
                    justify-content:center;
                    align-items:center;
                    }
                    <!-- Aqui el elemento table-->
                    table{
                    width:30px;
                    box-shadow: 5px 5px 10px 20px #000000;
                    background-color:white;
                    padding:50px;
                    color:black;
                    border-collapse: collapse;
                    border: solid;
                    
                    }
                    table tr th{
                    background-color:#d6d6c2;
                    color:black;
                    padding: 1em;
                    border: solid;
                    border-color: black;
                    }
                    td{
                    font-size:20px;
                    border:solid;
                    border-color:black;
                    text-align:center;
                    font-width:10px;
                    padding:10px;
                    }
                    tr:hover td{
                    font-size:25px;
                    font-weight:bold;
                    }                
                    tr.nojugable td{
                    background-color: #ffad33;
                    }
                    tr.casijugable td{
                    background-color: #ffff99;
                    }
                    tr.jugable td{
                    background-color: #ccffcc;
                    }
                    <!--Y aqui el footer muy sencillo -->
                    footer#piepagina{
                    margin-top:70px;
                    background-color:#363432;
                    color:#90A19D;
                    text-align:center;
                    padding:10px;
                </style>
            </head>
            <body>
                <div class="cabecera">
                    <img src="https://www.mamedev.org/_include/img/logo-mame.png" alt=""/>
                </div>
                <div class="introduccion">
                    <div class="uno">
                        <p>
                            <strong>La mejor lista de juegos para MAME</strong>
                        </p>
                        <img src="https://cdn-icons-png.flaticon.com/512/2004/2004987.png" alt=""/>
                    </div>
                    <div class="dos">
                        <p>
                            <strong>Sin duda la mejor opcion a la hora de ver que juegos estan disponibles para este gran emulador de recreativas,estan ordenados por año para que cualquier nostálgico pueda encontrar rapidamente su juego favorito.Hecho por fans para todos los jugadores.</strong>
                        </p>
                    </div>
                </div>
                <div class="table">
                    <table>
                        <tr>
                            <th>NOMBRE</th>
                            <th>DESCRIPCION</th>
                            <th>AÑO</th>
                            <th>FABRICANTE</th>
                            <th>¿ES JUGABLE?</th>
                            <th>ESTADO</th>
                            <th>TIPO DE PANTALLLA</th>
                            <th>HORIENTACION DE LA PANTALLA</th>
                            <th>ARCHIVO FUENTE</th>
                        </tr>
                        <xsl:for-each select="/mame/arcade" >
                            <xsl:sort select="year"/>
                            <xsl:if test="is_runnable='YES'">
                                <tr>
                                    <xsl:if test="driver_status='INCOMPLETO'">
                                        <xsl:attribute name="class">nojugable</xsl:attribute>
                                    </xsl:if>
                                    <xsl:if test="driver_status='PRELIMINARE'">
                                        <xsl:attribute name="class">casijugable</xsl:attribute>
                                    </xsl:if>
                                    <xsl:if test="driver_status='BUONO'">
                                        <xsl:attribute name="class">jugable</xsl:attribute>
                                    </xsl:if>
                                
                                    <td>
                                        <xsl:value-of select="name"/>
                                    </td>
                                    <td>
                                        <xsl:value-of select="description"/>
                                    </td>
                                    <td>
                                        <xsl:value-of select="year"/>
                                    </td>
                                    <td>
                                        <xsl:value-of select="manufacturer"/>
                                    </td>
                                    <xsl:choose>
                                        <xsl:when test="is_runnable='YES'">
                                            <td>&#10004;</td>
                                        </xsl:when>                       
                                    </xsl:choose>                              
                                    <xsl:choose>
                                        <xsl:when test="driver_status='BUONO'">
                                            <td>BUENO</td>
                                        </xsl:when>
                                        <xsl:when test="driver_status='PRELIMINARE'">
                                            <td>PRELIMINAR</td>
                                        </xsl:when>
                                        <xsl:otherwise>
                                            <td>INCOMPLETO</td>
                                        </xsl:otherwise>                        
                                    </xsl:choose> 
                                    <td>
                                        <xsl:value-of select="display_type"/>
                                    </td>
                                    <td>
                                        <xsl:value-of select="display_orientation"/>
                                    </td>
                                    <td>
                                        <xsl:value-of select="sourcefile"/>
                                    </td>
                          

                                </tr>
                            </xsl:if>
                        </xsl:for-each>

                    </table>
                </div>
                         
                  
                <footer id="piepagina">
                    <h4>Lista Videojuegos MAME</h4>
                    <p>Realizado por Samuel Leiva álvarez</p>
                    <p>1ºDAM</p>
                </footer>
  
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>
