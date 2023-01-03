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
                    <!--<xsl:value-of select="book_shop/book/title" />-->
                    <xsl:value-of select="/" />
                    <!--<xsl:value-of select="." />  => truy cap den gia tri hien thoi -->
                    <!--<xsl:value-of select=".." /> => truy cap den parent -->
                    <!--<xsl:value-of select="@" /> => truy cap den thuoc tinh nao do-->
                    <!--<xsl:value-of select="//title" />-->
                    <!--<xsl:value-of select="//book" />-->
                    <xsl:for-each select="book_shop/book/@id">
                        <xsl:value-of select="." />
                    </xsl:for-each>
                    
                </div>
                
                <div>
                    nodename: get all node co ten la "nodename"<br/>
                    /       : lựa chọn từ phần tử gốc của tập tin XML <br/>
                    //nodename: truy cập node có tên nodename ở vị trí bất kỳ
                    .       : get all giá trị node hiện tại
                    ..      : get all giá trị node cha
                    @       : get value of thuộc tính
                </div>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>
