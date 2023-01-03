<?xml version="1.0" encoding="UTF-8"?>

<!--
    Document   : 01_books.xsl
    Created on : Ngày 02 tháng 1 năm 2023, 10:51
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
                <title>01_XPATH</title>
                
            </head>
            <body>
                <h1>Khoa hoc XML</h1>
                <div>
                   path/book[2]: Get info of node o vi tri so 2               
                   path/book[last()]: Get info of node o vi tri cuoi cung              
                   path/book[last()-1]: Get info of node o vi tri ngay gan cuoi cung              
                   path/book[@id]: Get info of node o vi tri id              
                </div>
                
                <div>
                    <!--<xsl:for-each select="book_shop/book[@id]" >-->
                        <!--<xsl:value-of select="book_shop/book[2]" /><br />-->
                        <!--<xsl:value-of select="book_shop/book[last()]" /><br />-->
                        <!--<xsl:value-of select="title" /><br />-->
                    <!--</xsl:for-each>-->
                    
                    <xsl:for-each select="//book/title | //book/author" >
                        <xsl:value-of select="." /><br />
                    </xsl:for-each>
                </div>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>

