<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   :LOOP.xsl
    Created on : Ngày 02 tháng 1 năm 2023, 09:48
    Author     : Administrator
    Description:
    Purpose of transformation follows.
-->

<xsl:stylesheet xmlns:xsl="http://www.w3.org/1999/XSL/Transform" version="1.0">
    <xsl:output method="html"/>

    <!-- TODO customize transformation rules 
         syntax recommendation http://www.w3.org/TR/xslt 
    -->
    <xsl:template match="book_shop">
        <!--<xsl:template match="book_shop">-->
        <!--Neu dat match="book_shop" thi trong select ko can viet book_shop nua(match: chinh la duong dan)-->
        <html>
            <head>
                <title>LOOP</title>
            </head>
            
            <body>
                <h1>Khoa hoc lap trinh xml</h1>
                <h3>Embed .xsl into .xml</h3>
                <xsl:for-each select="book" >
                    <!--Sap xep weigth cua book theo thu tu giam dan-->
                    <xsl:sort select="weight" order="descending" data-type="number"/>
                    <ul>
                        <li>Course name: <xsl:value-of select="title" /></li>
                        <li>Author name: <xsl:value-of select="author" /></li>
                        <li>Page amount: <xsl:value-of select="pages" /></li>
                        <!--Neu weight > 500 gam thi moi in ra-->
                        <li>
                            Chu y: 
                            <xsl:choose>
                                <xsl:when test="weight &gt; 500"> 
                                    Cuon sach nay se bị tính phí vận chuyển
                                </xsl:when>
                                <xsl:otherwise test="weight &gt; 500"> 
                                    Cuon sach nay se duoc mien phi vận chuyển
                                </xsl:otherwise>
                            </xsl:choose>
                        </li>
                        <li>============================================</li>
                    </ul>
                </xsl:for-each>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>
