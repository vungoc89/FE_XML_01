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
                       
                </div>
                
                <div>
                    <!--01. Cac bieu thuc so sanh: > (&gt;) < (&lt;) != --> 
<!--                     <xsl:for-each select="//book/title | //book/author" >
                        <xsl:value-of select="." /><br />
                    </xsl:for-each>-->
                    
<!--                <xsl:for-each select="//book[price/real &gt; 50]" >
                        <xsl:value-of select="title" /><br />
                    </xsl:for-each>-->
                    <!--
                    <xsl:for-each select="//book[price/real &lt; 60]" >
                        <xsl:value-of select="title" /><br />
                    </xsl:for-each>-->
                    
                    <!--Get cac book KO CO khuyen mai-->
<!--                <xsl:for-each select="//book[price/real = price/saleoff]" >
                        <xsl:value-of select="title" /><br />
                    </xsl:for-each>-->
                    
                    <!--Get cac book CO khuyen mai-->
<!--                <xsl:for-each select="//book[price/real &gt; price/saleoff]" >
                        <xsl:value-of select="title" /><br />
                    </xsl:for-each>-->
                    
                    <!--02. Tinh phi van chuyen 3 cuon sach den US-EU-VN => dung phep nhan(*), chia(div)-->
<!--                     <xsl:for-each select="//book" >
                         <h3>
                             <xsl:value-of select="title" />
                             <xsl:value-of select="weight" />
                             <xsl:value-of select="weight/@units" />
                         </h3>
                        <br />US(<xsl:value-of select="shipping/US" /> )
                                 <xsl:value-of select="(weight div 100)*shipping/US" />
                       
                        <br />EU(<xsl:value-of select="shipping/EU" />)
                        <xsl:value-of select="(weight div 100)*shipping/EU" />
                        
                        <br />VN(<xsl:value-of select="shipping/VN" />)
                        <xsl:value-of select="(weight div 100)*shipping/VN" />
                        <br />=======================================
                    </xsl:for-each>-->
                    <!--03. Tim cac cuon sach sale off va Tinh so tien duoc giam sau khi sale off-->
                    <xsl:for-each select="//book" >
                        <h3>
                            <xsl:value-of select="title" />
                           
                        </h3>
                        <br />Price: <xsl:value-of select="price/real" />
                        <br />Saleoff: <xsl:value-of select="price/saleoff" />
                        <br />Down: <xsl:value-of select="price/real - price/saleoff" />
                        <!--<br /> %Down: <xsl:value-of select="100 - (price/real div price/saleoff)*100" />-->
                        
                        <!--Format cho number khi in ra(chi lay 2 so sau dau thap phan: format-number(..., '##0.##')
                        0 la ket thuc, ## la 2 chu so, ### la 3 chu so-->
                        <!--<br /> %Down: <xsl:value-of select="format-number(100 - (price/real div price/saleoff)*100, '##0.##')" />-->
                        
                        <!--C2: format number dung ROUND(ko lay so sau dau thap phan)-->
                        <br /> %Down: <xsl:value-of select="round(100 - (price/real div price/saleoff)*100)" />
                               
                        <br />=======================================

                    </xsl:for-each>
                    
                    <br />So cuon sach: <xsl:value-of select="count(book_shop/book)" />
                    <br />Tong so tien: <xsl:value-of select="sum(book_shop/book/price/saleoff)" />
                </div>
            </body>
        </html>
    </xsl:template>

</xsl:stylesheet>
