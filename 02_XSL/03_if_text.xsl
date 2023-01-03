<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : IF TEXT.xsl
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
    <xsl:template match="/">
    <!--<xsl:template match="book_shop">-->
    <!--Neu dat match="book_shop" thi trong select ko can viet book_shop nua(match: chinh la duong dan)-->
        <html>
            <head>
                <title>IF TEXT</title>
            </head>
            
            <body>
                <h1>Khoa hoc lap trinh xml</h1>
                <h3>Embed .xsl into .xml</h3>
                
                <ul>
                    <li>Course name: <xsl:value-of select="book_shop/book/title" /></li>
                    <li>Author name: <xsl:value-of select="book_shop/book/author" /></li>
                    <li>Page amount: <xsl:value-of select="book_shop/book/pages" /></li>
                    <!--Neu weight > 500 gam thi moi in ra-->
                    <xsl:if test="book_shop/book/weight &gt; 500">
                    <!--if test con co the kiem tra ca @units: vd: neu >/</!= don vi 'gam' thi ...-->
                    <!--<xsl:if test="book_shop/book/weight/@units != 'gam'">-->
                    <li>
                        Book weight: <xsl:value-of select="book_shop/book/weight"/> 
                                    <xsl:value-of select="book_shop/book/weight/@units"/>
                    </li>
                    </xsl:if>
                </ul>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>
