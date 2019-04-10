<?xml version="1.0" encoding="utf-8"?>
<xsl:stylesheet version="1.0"
 xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
 <xsl:include href="header.xsl" />
 <xsl:include href="senderReceiver.xsl" />
 <xsl:include href="footer.xsl" />
 <xsl:include href="style.xsl" />
 <xsl:include href="mailReason.xsl" />
 <xsl:include href="recordTitle.xsl" />

 <xsl:template match="/">
  <html>
   <head>
    <xsl:call-template name="generalStyle" />
   </head>
   <body>
    <xsl:attribute name="style">
    <xsl:call-template name="bodyStyleCss" /> <!-- style.xsl -->
   </xsl:attribute>
    <xsl:call-template name="head" /> <!-- header.xsl -->
    <!-- <xsl:call-template name="toWhomIsConcerned" /> mailReason.xsl -->

    <br />

    <div class="messageArea">
     <div class="messageBody">
      <table cellspacing="0" cellpadding="5" border="0">
       <tr>
                <td><b><xsl:value-of select="notification_data/receivers/receiver/user/first_name"/>&#160;<xsl:value-of select="notification_data/receivers/receiver/user/last_name"/>,<br /></b></td>
           </tr>
<br />
       <tr>
        <td>
         @@we_sent@@
         <b>
          <xsl:value-of select="notification_data/request/create_date" />
         </b>
         .
        </td>
       </tr>
       <tr>
        <td><b>@@following_details@@ :</b></td>
       </tr>
       <tr>
        <td>
         <xsl:call-template name="recordTitle" />
        </td>
       </tr>

       <tr>
        <td>
         <b>@@delivered_to@@ : </b>
         <xsl:value-of select="notification_data/receivers/receiver/user_address/line1"/>&#44;&#160;<xsl:value-of select="notification_data/receivers/receiver/user_address/postal_code"/>&#160;<xsl:value-of select="notification_data/receivers/receiver/user_address/city"/>
        </td>
       </tr>

       <tr>
        <td>
         <b>@@due_date@@ : </b>
         <xsl:value-of select="notification_data/due_date" />
        </td>
       </tr>
      </table>
      <br />
      <table>

       <tr>
        <td>@@sincerely@@</td>
       </tr>
       <tr>
        <td>@@department@@</td>
       </tr>

      </table>
     </div>
    </div>
    <xsl:call-template name="lastFooter" /> <!-- footer.xsl -->
    <xsl:call-template name="contactUs" />
   </body>
  </html>
 </xsl:template>
</xsl:stylesheet>