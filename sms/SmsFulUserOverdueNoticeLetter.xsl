<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:include href="smsRecordTitle.xsl" />
 <xsl:template match="/">

<xsl:value-of select="notification_data/receivers/sms_receiver/phone_list_str"/> : <xsl:value-of select="notification_data/organization_unit/name"/>.: <xsl:if test = "notification_data/receivers/receiver/user/user_name"> <xsl:value-of select="notification_data/receivers/receiver/user/user_name"/></xsl:if>
@@hi@@ <xsl:value-of select="notification_data/user_for_printing/name"/>,
@@youHave@@ <xsl:value-of select="count(notification_data/item_loans/item_loan)" /> @@overdueItems@@.
@@pleaseReturn@@. @@login@@.

 </xsl:template>
</xsl:stylesheet>