<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : 02_basic.xsl
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
        <html>
            <head>
                <title>02_basic.xsl</title>
            </head>
            
            <body>
                <h1>Khoa hoc lap trinh xml</h1>
                <h3>Embed .xsl into .xml</h3>
                
                <ul>
                    <li>Course name: <xsl:value-of select="book_shop/book/title" /></li>
                    <li>Author name: <xsl:value-of select="book_shop/book/author" /></li>
                    <li>Page amount: <xsl:value-of select="book_shop/book/pages" /></li>
                    <li>
                        Book weight: <xsl:value-of select="book_shop/book/weight"/> 
                                    <xsl:value-of select="book_shop/book/weight/@units"/>
                    </li>
                </ul>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>
