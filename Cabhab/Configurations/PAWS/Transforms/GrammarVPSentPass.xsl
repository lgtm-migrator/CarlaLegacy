<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/" mode="vpsentpass">

	<xsl:if test="normalize-space(//typology/@wordOrder)!='VSO' and normalize-space(//typology/@wordOrder)!='OSV'">
<xsl:text>
rule {VP option 8a - V initial, sentential complement}
VP = V {CP / IP}
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V embedded&gt; = &lt;CP&gt;
	&lt;V embedded&gt; = &lt;IP&gt;
	&lt;CP head type root&gt; = -
	&lt;CP head type relative&gt; = -
	&lt;IP head type relative&gt; = -
	&lt;IP head fronted&gt; = none
	&lt;IP head type comp&gt; = -
	&lt;IP head type prefix comp&gt; = - | uses CP
	&lt;IP head type suffix comp&gt; = -
	&lt;IP head type root&gt; = -
	&lt;IP head type question&gt; = -
	&lt;V head type sentential&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;V head object head type reflexive&gt; = -	| to eliminate ambiguity
	&lt;V head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;CP head type comma&gt;
	&lt;VP head type comma&gt; &lt;= &lt;IP head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;CP head type suffix&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;IP head type suffix&gt;
	&lt;V head type motion&gt; = -
	 &lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP option&gt; = 8a
</xsl:text>
</xsl:if>





	<xsl:if test="normalize-space(//typology/@wordOrder)='SOV' or normalize-space(//typology/@wordOrder)='OVS'">
<xsl:text>
rule {VP option 8b - V final, sentential complement}
VP = {CP / IP} V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V embedded&gt; = &lt;CP&gt;
	&lt;V embedded&gt; = &lt;IP&gt;
	&lt;CP head type root&gt; = -
	&lt;CP head type relative&gt; = -
	&lt;IP head type relative&gt; = -
	&lt;IP head fronted&gt; = none
	&lt;IP head type comp&gt; = -
	&lt;IP head type prefix comp&gt; = - | uses CP
	&lt;IP head type suffix comp&gt; = -
	&lt;IP head type root&gt; = -
	&lt;IP head type question&gt; = -
	&lt;V head type sentential&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;V head object head type reflexive&gt; = -	| to eliminate ambiguity
	&lt;V head type motion&gt; = -
	&lt;CP head type comma&gt; = -
	&lt;IP head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;CP head type prefix&gt;
	&lt;VP head type prefix&gt; &lt;= &lt;IP head type prefix&gt;
	 &lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP option&gt; = 8b
</xsl:text>
</xsl:if>





	<xsl:if test="normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//q/@contFront)='after'">
<xsl:text>
rule {VP option 8bQSubj - V final, sentential complement, subject questioned}
VP = {CP / IP} DP V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head subject&gt; = &lt;DP&gt;
	&lt;V embedded&gt; = &lt;CP&gt;
	&lt;V embedded&gt; = &lt;IP&gt;
	&lt;VP head type question&gt; = &lt;+&gt;
	&lt;VP head type pro-drop&gt; = &lt;-&gt;
	&lt;DP head type wh&gt; = &lt;+&gt;
	&lt;CP head type root&gt; = -
	&lt;CP head type relative&gt; = -
	&lt;IP head type relative&gt; = -
	&lt;IP head fronted&gt; = none
	&lt;IP head type comp&gt; = -
	&lt;IP head type prefix comp&gt; = - | uses CP
	&lt;IP head type suffix comp&gt; = -
	&lt;IP head type root&gt; = -
	&lt;IP head type question&gt; = -
	&lt;V head type sentential&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;V head type motion&gt; = -
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;CP head type comma&gt; = -
	&lt;IP head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;CP head type prefix&gt;
	&lt;VP head type prefix&gt; &lt;= &lt;IP head type prefix&gt;
	&lt;VP option&gt; = 8bQSubj
</xsl:text>
</xsl:if>





	<xsl:if test="normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//q/@contFront)='after'">
<xsl:text>
rule {VP option 8bQAdvP - V final, sentential complement, AdvP questioned}
VP = {CP / IP} AdvP V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V embedded&gt; = &lt;CP&gt;
	&lt;V embedded&gt; = &lt;IP&gt;
	&lt;VP head type question&gt; = &lt;+&gt;
	&lt;AdvP head type wh&gt; = &lt;+&gt;
	&lt;CP head type root&gt; = -
	&lt;CP head type relative&gt; = -
	&lt;IP head type relative&gt; = -
	&lt;IP head fronted&gt; = none
	&lt;IP head type comp&gt; = -
	&lt;IP head type prefix comp&gt; = - | uses CP
	&lt;IP head type suffix comp&gt; = -
	&lt;IP head type root&gt; = -
	&lt;IP head type question&gt; = -
	&lt;V head type sentential&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;V head object head type reflexive&gt; = -	| to eliminate ambiguity
	&lt;V head type motion&gt; = -
	&lt;CP head type comma&gt; = -
	&lt;IP head type comma&gt; = -
	&lt;AdvP head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;CP head type prefix&gt;
	&lt;VP head type prefix&gt; &lt;= &lt;IP head type prefix&gt;
	&lt;VP option&gt; = 8bQAdvP
</xsl:text>
</xsl:if>





	<xsl:if test="normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//np/@case)!='ergative' and normalize-space(//neg/@objVerbRequired)='no' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//np/@case)!='ergative' and normalize-space(//neg/@objVerbRequired)='no'">
<xsl:text>
rule {VP option 8aoacc - V initial, accusative object with sentential complement}
VP = V DP {CP / IP}
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head object&gt; = &lt;DP&gt;
	&lt;V embedded&gt; = &lt;CP&gt;
	&lt;V embedded&gt; = &lt;IP&gt;
	&lt;DP head case&gt; = accusative
	&lt;CP head type root&gt; = -
	&lt;CP head type relative&gt; = -
	&lt;IP head type relative&gt; = -
	&lt;IP head fronted&gt; = none
	&lt;IP head type comp&gt; = -
	&lt;IP head type prefix comp&gt; = - | uses CP
	&lt;IP head type suffix comp&gt; = -
	&lt;IP head type root&gt; = -
	&lt;IP head type question&gt; = -
	&lt;V head type sentential&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;V head type motion&gt; = -
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;V head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;CP head type comma&gt;
	&lt;VP head type comma&gt; &lt;= &lt;IP head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;CP head type suffix&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;IP head type suffix&gt;
	 &lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP option&gt; = 8aoacc
</xsl:text>
</xsl:if>













	<xsl:if test="normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//np/@case)!='ergative' and normalize-space(//neg/@objVerbRequired)!='no' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//np/@case)!='ergative' and normalize-space(//neg/@objVerbRequired)!='no'">
<xsl:text>
rule {VP option 8aoaccNegObjVerbRequired - V initial, accusative object with sentential complement}
VP = V DP {CP / IP}
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head object&gt; = &lt;DP&gt;
	&lt;V embedded&gt; = &lt;CP&gt;
	&lt;V embedded&gt; = &lt;IP&gt;
	&lt;DP head case&gt; = accusative
	&lt;CP head type root&gt; = -
	&lt;CP head type relative&gt; = -
	&lt;IP head type relative&gt; = -
	&lt;IP head fronted&gt; = none
	&lt;IP head type comp&gt; = -
	&lt;IP head type prefix comp&gt; = - | uses CP
	&lt;IP head type suffix comp&gt; = -
	&lt;IP head type root&gt; = -
	&lt;IP head type question&gt; = -
	&lt;V head type sentential&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;V head type motion&gt; = -
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;V head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;CP head type comma&gt;
	&lt;VP head type comma&gt; &lt;= &lt;IP head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;CP head type suffix&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;IP head type suffix&gt;
	&lt;VP head&gt; == [object:[head:[type:[negative:+]]]] -&gt;  | if object negative, VP must be
                     [type:[negative:+]]
	 &lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP option&gt; = 8aoaccNegObjVerbRequired
</xsl:text>
</xsl:if>













	<xsl:if test="normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//np/@case)='ergative' and normalize-space(//neg/@objVerbRequired)='no' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//np/@case)='ergative' and normalize-space(//neg/@objVerbRequired)='no' or normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//np/@case)='split' and normalize-space(//neg/@objVerbRequired)='no' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//np/@case)='split' and normalize-space(//neg/@objVerbRequired)='no'">
<xsl:text>
rule {VP option 8aoabs - V initial, absolutive object with sentential complement}
VP = V DP {CP / IP}
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head object&gt; = &lt;DP&gt;
	&lt;V embedded&gt; = &lt;CP&gt;
	&lt;V embedded&gt; = &lt;IP&gt;
	&lt;DP head case&gt; = absolutive
	&lt;CP head type root&gt; = -
	&lt;CP head type relative&gt; = -
	&lt;IP head type relative&gt; = -
	&lt;IP head fronted&gt; = none
	&lt;IP head type comp&gt; = -
	&lt;IP head type prefix comp&gt; = - | uses CP
	&lt;IP head type suffix comp&gt; = -
	&lt;IP head type root&gt; = -
	&lt;IP head type question&gt; = -
	&lt;V head type sentential&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;V head type motion&gt; = -
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;V head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;CP head type comma&gt;
	&lt;VP head type comma&gt; &lt;= &lt;IP head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;CP head type suffix&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;IP head type suffix&gt;
	 &lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP option&gt; = 8aoabs
</xsl:text>
</xsl:if>

























	<xsl:if test="normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//np/@case)='ergative' and normalize-space(//neg/@objVerbRequired)!='no' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//np/@case)='ergative' and normalize-space(//neg/@objVerbRequired)!='no' or normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//np/@case)='split' and normalize-space(//neg/@objVerbRequired)!='no' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//np/@case)='split' and normalize-space(//neg/@objVerbRequired)!='no'">
<xsl:text>
rule {VP option 8aoabsNegObjVerbRequired - V initial, absolutive object with sentential complement}
VP = V DP {CP / IP}
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head object&gt; = &lt;DP&gt;
	&lt;V embedded&gt; = &lt;CP&gt;
	&lt;V embedded&gt; = &lt;IP&gt;
	&lt;DP head case&gt; = absolutive
	&lt;CP head type root&gt; = -
	&lt;CP head type relative&gt; = -
	&lt;IP head type relative&gt; = -
	&lt;IP head fronted&gt; = none
	&lt;IP head type comp&gt; = -
	&lt;IP head type prefix comp&gt; = - | uses CP
	&lt;IP head type suffix comp&gt; = -
	&lt;IP head type root&gt; = -
	&lt;IP head type question&gt; = -
	&lt;V head type sentential&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;V head type motion&gt; = -
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;V head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;CP head type comma&gt;
	&lt;VP head type comma&gt; &lt;= &lt;IP head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;CP head type suffix&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;IP head type suffix&gt;
	&lt;VP head&gt; == [object:[head:[type:[negative:+]]]] -&gt;  | if object negative, VP must be
                     [type:[negative:+]]
	 &lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP head option&gt; = 8aoabsNegObjVerbRequired
</xsl:text>
</xsl:if>

























	<xsl:if test="normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//np/@case)!='ergative' and normalize-space(//neg/@objVerbRequired)='no' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//np/@case)!='ergative' and normalize-space(//neg/@objVerbRequired)='no'">
<xsl:text>
rule {VP option 8boacc - V final, accusative object with sentential complement}
VP = {CP / IP} DP V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head object&gt; = &lt;DP&gt;
	&lt;V embedded&gt; = &lt;CP&gt;
	&lt;V embedded&gt; = &lt;IP&gt;
	&lt;DP head case&gt; = accusative
	&lt;CP head type root&gt; = -
	&lt;CP head type relative&gt; = -
	&lt;IP head type relative&gt; = -
	&lt;IP head fronted&gt; = none
	&lt;IP head type comp&gt; = -
	&lt;IP head type prefix comp&gt; = - | uses CP
	&lt;IP head type suffix comp&gt; = -
	&lt;IP head type root&gt; = -
	&lt;IP head type question&gt; = -
	&lt;V head type sentential&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;V head type motion&gt; = -
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;CP head type comma&gt; = -
	&lt;IP head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;CP head type prefix&gt;
	&lt;VP head type prefix&gt; &lt;= &lt;IP head type prefix&gt;
	 &lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP option&gt; = 8boacc
</xsl:text>
</xsl:if>













	<xsl:if test="normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//np/@case)!='ergative' and normalize-space(//neg/@objVerbRequired)!='no' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//np/@case)!='ergative' and normalize-space(//neg/@objVerbRequired)!='no'">
<xsl:text>
rule {VP option 8boaccNegObjVerbRequired - V final, accusative object with sentential complement}
VP = {CP / IP} DP V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head object&gt; = &lt;DP&gt;
	&lt;V embedded&gt; = &lt;CP&gt;
	&lt;V embedded&gt; = &lt;IP&gt;
	&lt;DP head case&gt; = accusative
	&lt;CP head type root&gt; = -
	&lt;CP head type relative&gt; = -
	&lt;IP head type relative&gt; = -
	&lt;IP head fronted&gt; = none
	&lt;IP head type comp&gt; = -
	&lt;IP head type prefix comp&gt; = - | uses CP
	&lt;IP head type suffix comp&gt; = -
	&lt;IP head type root&gt; = -
	&lt;IP head type question&gt; = -
	&lt;V head type sentential&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;V head type motion&gt; = -
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;CP head type comma&gt; = -
	&lt;IP head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;CP head type prefix&gt;
	&lt;VP head type prefix&gt; &lt;= &lt;IP head type prefix&gt;
	&lt;VP head&gt; == [object:[head:[type:[negative:+]]]] -&gt;  | if object negative, VP must be
                     [type:[negative:+]]
	 &lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP option&gt; = 8boaccNegObjVerbRequired
</xsl:text>
</xsl:if>













	<xsl:if test="normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//q/@contFront)='after' and normalize-space(//np/@case)!='ergative' and normalize-space(//neg/@objVerbRequired)='no'">
<xsl:text>
rule {VP option 8boaccQSubj - V final, sentential complement with accusative object, subject questioned}
VP = {CP / IP} DP_1 DP V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head subject&gt; = &lt;DP&gt;
	&lt;V head object&gt; = &lt;DP_1&gt;
	&lt;V embedded&gt; = &lt;CP&gt;
	&lt;V embedded&gt; = &lt;IP&gt;
	&lt;VP head type question&gt; = &lt;+&gt;
	&lt;VP head type pro-drop&gt; = &lt;-&gt;
	&lt;DP head type wh&gt; = &lt;+&gt;
	&lt;DP head case&gt; = nominative
	&lt;DP_1 head case&gt; = accusative
	&lt;CP head type root&gt; = -
	&lt;CP head type relative&gt; = -
	&lt;IP head type relative&gt; = -
	&lt;IP head fronted&gt; = none
	&lt;IP head type comp&gt; = -
	&lt;IP head type prefix comp&gt; = - | uses CP
	&lt;IP head type suffix comp&gt; = -
	&lt;IP head type root&gt; = -
	&lt;IP head type question&gt; = -
	&lt;V head type sentential&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;V head type motion&gt; = -
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;DP_1 head type suffix poss&gt; = -         | only in possessor position
	&lt;DP_1 head type prefix poss&gt; = -
	&lt;DP_1 head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP_1 head type suffix copular&gt; = -
	&lt;CP head type comma&gt; = -
	&lt;IP head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;DP_1 head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;CP head type prefix&gt;
	&lt;VP head type prefix&gt; &lt;= &lt;IP head type prefix&gt;
		{&lt;DP_1 head type reflexive&gt; = -
		/&lt;DP_1 head type reflexive&gt; = +
	&lt;DP_1 head agr gender&gt; = &lt;DP head agr gender&gt;
	&lt;DP_1 head agr animate&gt; = &lt;DP head agr animate&gt;
	&lt;DP_1 head agr class&gt; = &lt;DP head agr class&gt;
	}
	&lt;VP option&gt; = 8boaccQSubj
</xsl:text>
</xsl:if>









	<xsl:if test="normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//q/@contFront)='after' and normalize-space(//np/@case)!='ergative' and normalize-space(//neg/@objVerbRequired)!='no'">
<xsl:text>
rule {VP option 8boaccQSubjNegObjVerbRequired - V final, sentential complement with accusative object, subject questioned}
VP = {CP / IP} DP_1 DP V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head subject&gt; = &lt;DP&gt;
	&lt;V head object&gt; = &lt;DP_1&gt;
	&lt;V embedded&gt; = &lt;CP&gt;
	&lt;V embedded&gt; = &lt;IP&gt;
	&lt;VP head type question&gt; = &lt;+&gt;
	&lt;VP head type pro-drop&gt; = &lt;-&gt;
	&lt;DP head type wh&gt; = &lt;+&gt;
	&lt;DP head case&gt; = nominative
	&lt;DP_1 head case&gt; = accusative
	&lt;CP head type root&gt; = -
	&lt;CP head type relative&gt; = -
	&lt;IP head type relative&gt; = -
	&lt;IP head fronted&gt; = none
	&lt;IP head type comp&gt; = -
	&lt;IP head type prefix comp&gt; = - | uses CP
	&lt;IP head type suffix comp&gt; = -
	&lt;IP head type root&gt; = -
	&lt;IP head type question&gt; = -
	&lt;V head type sentential&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;V head type motion&gt; = -
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;DP_1 head type suffix poss&gt; = -         | only in possessor position
	&lt;DP_1 head type prefix poss&gt; = -
	&lt;DP_1 head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP_1 head type suffix copular&gt; = -
	&lt;CP head type comma&gt; = -
	&lt;IP head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;DP_1 head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;CP head type prefix&gt;
	&lt;VP head type prefix&gt; &lt;= &lt;IP head type prefix&gt;
		{&lt;DP_1 head type reflexive&gt; = -
		/&lt;DP_1 head type reflexive&gt; = +
	&lt;DP_1 head agr gender&gt; = &lt;DP head agr gender&gt;
	&lt;DP_1 head agr animate&gt; = &lt;DP head agr animate&gt;
	&lt;DP_1 head agr class&gt; = &lt;DP head agr class&gt;
	}
	&lt;VP head&gt; == [object:[head:[type:[negative:+]]]] -&gt;  | if object negative, VP must be
                     [type:[negative:+]]
	&lt;VP option&gt; = 8boaccQSubjNegObjVerbRequired
</xsl:text>
</xsl:if>









	<xsl:if test="normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//q/@contFront)='after' and normalize-space(//np/@case)!='ergative' and normalize-space(//neg/@objVerbRequired)='no'">
<xsl:text>
rule {VP option 8boaccQAdvP - V final, sentential complement with accusative object, AdvP questioned}
VP = {CP / IP} DP AdvP V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head object&gt; = &lt;DP&gt;
	&lt;V embedded&gt; = &lt;CP&gt;
	&lt;V embedded&gt; = &lt;IP&gt;
	&lt;VP head type question&gt; = &lt;+&gt;
	&lt;AdvP head type wh&gt; = &lt;+&gt;
	&lt;DP head case&gt; = accusative
	&lt;CP head type root&gt; = -
	&lt;CP head type relative&gt; = -
	&lt;IP head type relative&gt; = -
	&lt;IP head fronted&gt; = none
	&lt;IP head type comp&gt; = -
	&lt;IP head type prefix comp&gt; = - | uses CP
	&lt;IP head type suffix comp&gt; = -
	&lt;IP head type root&gt; = -
	&lt;IP head type question&gt; = -
	&lt;V head type sentential&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;V head type motion&gt; = -
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;CP head type comma&gt; = -
	&lt;IP head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;AdvP head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;CP head type prefix&gt;
	&lt;VP head type prefix&gt; &lt;= &lt;IP head type prefix&gt;
	&lt;VP option&gt; = 8boaccQAdvP
</xsl:text>
</xsl:if>









	<xsl:if test="normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//q/@contFront)='after' and normalize-space(//np/@case)!='ergative' and normalize-space(//neg/@objVerbRequired)!='no'">
<xsl:text>
rule {VP option 8boaccQAdvPNegObjVerbRequired - V final, sentential complement with accusative object, AdvP questioned}
VP = {CP / IP} DP AdvP V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head object&gt; = &lt;DP&gt;
	&lt;V embedded&gt; = &lt;CP&gt;
	&lt;V embedded&gt; = &lt;IP&gt;
	&lt;VP head type question&gt; = &lt;+&gt;
	&lt;AdvP head type wh&gt; = &lt;+&gt;
	&lt;DP head case&gt; = accusative
	&lt;CP head type root&gt; = -
	&lt;CP head type relative&gt; = -
	&lt;IP head type relative&gt; = -
	&lt;IP head fronted&gt; = none
	&lt;IP head type comp&gt; = -
	&lt;IP head type prefix comp&gt; = - | uses CP
	&lt;IP head type suffix comp&gt; = -
	&lt;IP head type root&gt; = -
	&lt;IP head type question&gt; = -
	&lt;V head type sentential&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;V head type motion&gt; = -
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;CP head type comma&gt; = -
	&lt;IP head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;AdvP head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;CP head type prefix&gt;
	&lt;VP head type prefix&gt; &lt;= &lt;IP head type prefix&gt;
	&lt;VP head&gt; == [object:[head:[type:[negative:+]]]] -&gt;  | if object negative, VP must be
                     [type:[negative:+]]
	&lt;VP option&gt; = 8boaccQAdvPNegObjVerbRequired
</xsl:text>
</xsl:if>









	<xsl:if test="normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//np/@case)='ergative' and normalize-space(//neg/@objVerbRequired)='no' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//np/@case)='ergative' and normalize-space(//neg/@objVerbRequired)='no' or normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//np/@case)='split' and normalize-space(//neg/@objVerbRequired)='no' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//np/@case)='split' and normalize-space(//neg/@objVerbRequired)='no'">
<xsl:text>
rule {VP option 8boabs - V final, absolutive object with sentential complement}
VP = {CP / IP} DP V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head object&gt; = &lt;DP&gt;
	&lt;V embedded&gt; = &lt;CP&gt;
	&lt;V embedded&gt; = &lt;IP&gt;
	&lt;DP head case&gt; = absolutive
	&lt;CP head type root&gt; = -
	&lt;CP head type relative&gt; = -
	&lt;IP head type relative&gt; = -
	&lt;IP head fronted&gt; = none
	&lt;IP head type comp&gt; = -
	&lt;IP head type prefix comp&gt; = - | uses CP
	&lt;IP head type suffix comp&gt; = -
	&lt;IP head type root&gt; = -
	&lt;IP head type question&gt; = -
	&lt;V head type sentential&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;V head type motion&gt; = -
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;CP head type comma&gt; = -
	&lt;IP head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;CP head type prefix&gt;
	&lt;VP head type prefix&gt; &lt;= &lt;IP head type prefix&gt;
	 &lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP option&gt; = 8boabs
</xsl:text>
</xsl:if>

























	<xsl:if test="normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//np/@case)='ergative' and normalize-space(//neg/@objVerbRequired)!='no' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//np/@case)='ergative' and normalize-space(//neg/@objVerbRequired)!='no' or normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//np/@case)='split' and normalize-space(//neg/@objVerbRequired)!='no' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//np/@case)='split' and normalize-space(//neg/@objVerbRequired)!='no'">
<xsl:text>
rule {VP option 8boabsNegObjVerbRequired - V final, absolutive object with sentential complement}
VP = {CP / IP} DP V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head object&gt; = &lt;DP&gt;
	&lt;V embedded&gt; = &lt;CP&gt;
	&lt;V embedded&gt; = &lt;IP&gt;
	&lt;DP head case&gt; = absolutive
	&lt;CP head type root&gt; = -
	&lt;CP head type relative&gt; = -
	&lt;IP head type relative&gt; = -
	&lt;IP head fronted&gt; = none
	&lt;IP head type comp&gt; = -
	&lt;IP head type prefix comp&gt; = - | uses CP
	&lt;IP head type suffix comp&gt; = -
	&lt;IP head type root&gt; = -
	&lt;IP head type question&gt; = -
	&lt;V head type sentential&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;V head type motion&gt; = -
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;CP head type comma&gt; = -
	&lt;IP head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;CP head type prefix&gt;
	&lt;VP head type prefix&gt; &lt;= &lt;IP head type prefix&gt;
	&lt;VP head&gt; == [object:[head:[type:[negative:+]]]] -&gt;  | if object negative, VP must be
                     [type:[negative:+]]
	 &lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP option&gt; = 8boabsNegObjVerbRequired
</xsl:text>
</xsl:if>

























	<xsl:if test="normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//q/@contFront)='after' and normalize-space(//np/@case)='ergative' and normalize-space(//neg/@objVerbRequired)='no' or normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//q/@contFront)='after' and normalize-space(//np/@case)='split' and normalize-space(//neg/@objVerbRequired)='no'">
<xsl:text>
rule {VP option 8boabsQSubj - V final, sentential complement with absolutive object, subject questioned}
VP = {CP / IP} DP_1 DP V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head subject&gt; = &lt;DP&gt;
	&lt;V head object&gt; = &lt;DP_1&gt;
	&lt;V embedded&gt; = &lt;CP&gt;
	&lt;V embedded&gt; = &lt;IP&gt;
	&lt;VP head type question&gt; = &lt;+&gt;
	&lt;VP head type pro-drop&gt; = &lt;-&gt;
	&lt;DP head type wh&gt; = &lt;+&gt;
	&lt;DP head case&gt; = ergative
	&lt;DP_1 head case&gt; = absolutive
	&lt;CP head type root&gt; = -
	&lt;CP head type relative&gt; = -
	&lt;IP head type relative&gt; = -
	&lt;IP head fronted&gt; = none
	&lt;IP head type comp&gt; = -
	&lt;IP head type prefix comp&gt; = - | uses CP
	&lt;IP head type suffix comp&gt; = -
	&lt;IP head type root&gt; = -
	&lt;IP head type question&gt; = -
	&lt;V head type sentential&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;V head type motion&gt; = -
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;DP_1 head type suffix poss&gt; = -         | only in possessor position
	&lt;DP_1 head type prefix poss&gt; = -
	&lt;DP_1 head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP_1 head type suffix copular&gt; = -
	&lt;CP head type comma&gt; = -
	&lt;IP head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;DP_1 head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;CP head type prefix&gt;
	&lt;VP head type prefix&gt; &lt;= &lt;IP head type prefix&gt;
        {&lt;DP_1 head type reflexive&gt; = -
        /&lt;DP_1 head type reflexive&gt; = +
	&lt;DP_1 head agr gender&gt; = &lt;DP head agr gender&gt;
	&lt;DP_1 head agr animate&gt; = &lt;DP head agr animate&gt;
	&lt;DP_1 head agr class&gt; = &lt;DP head agr class&gt;
	}
	&lt;VP option&gt; = 8boabsQSubj
</xsl:text>
</xsl:if>

















	<xsl:if test="normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//q/@contFront)='after' and normalize-space(//np/@case)='ergative' and normalize-space(//neg/@objVerbRequired)!='no' or normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//q/@contFront)='after' and normalize-space(//np/@case)='split' and normalize-space(//neg/@objVerbRequired)!='no'">
<xsl:text>
rule {VP option 8boabsQSubjNegObjVerbRequired - V final, sentential complement with absolutive object, subject questioned}
VP = {CP / IP} DP_1 DP V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head subject&gt; = &lt;DP&gt;
	&lt;V head object&gt; = &lt;DP_1&gt;
	&lt;V embedded&gt; = &lt;CP&gt;
	&lt;V embedded&gt; = &lt;IP&gt;
	&lt;VP head type question&gt; = &lt;+&gt;
	&lt;VP head type pro-drop&gt; = &lt;-&gt;
	&lt;DP head type wh&gt; = &lt;+&gt;
	&lt;DP head case&gt; = ergative
	&lt;DP_1 head case&gt; = absolutive
	&lt;CP head type root&gt; = -
	&lt;CP head type relative&gt; = -
	&lt;IP head type relative&gt; = -
	&lt;IP head fronted&gt; = none
	&lt;IP head type comp&gt; = -
	&lt;IP head type prefix comp&gt; = - | uses CP
	&lt;IP head type suffix comp&gt; = -
	&lt;IP head type root&gt; = -
	&lt;IP head type question&gt; = -
	&lt;V head type sentential&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;V head type motion&gt; = -
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;DP_1 head type suffix poss&gt; = -         | only in possessor position
	&lt;DP_1 head type prefix poss&gt; = -
	&lt;DP_1 head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP_1 head type suffix copular&gt; = -
	&lt;CP head type comma&gt; = -
	&lt;IP head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;DP_1 head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;CP head type prefix&gt;
	&lt;VP head type prefix&gt; &lt;= &lt;IP head type prefix&gt;
		{&lt;DP_1 head type reflexive&gt; = -
		/&lt;DP_1 head type reflexive&gt; = +
	&lt;DP_1 head agr gender&gt; = &lt;DP head agr gender&gt;
	&lt;DP_1 head agr animate&gt; = &lt;DP head agr animate&gt;
	&lt;DP_1 head agr class&gt; = &lt;DP head agr class&gt;
	}
	&lt;VP head&gt; == [object:[head:[type:[negative:+]]]] -&gt;  | if object negative, VP must be
                     [type:[negative:+]]
	&lt;VP option&gt; = 8boabsQSubjNegObjVerbRequired
</xsl:text>
</xsl:if>

















	<xsl:if test="normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//q/@contFront)='after' and normalize-space(//np/@case)='ergative' and normalize-space(//neg/@objVerbRequired)='no' or normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//q/@contFront)='after' and normalize-space(//np/@case)='split' and normalize-space(//neg/@objVerbRequired)='no'">
<xsl:text>
rule {VP option 8boabsQAdvP - V final, sentential complement with absolutive object, AdvP questioned}
VP = {CP / IP} DP AdvP V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head object&gt; = &lt;DP&gt;
	&lt;V embedded&gt; = &lt;CP&gt;
	&lt;V embedded&gt; = &lt;IP&gt;
	&lt;VP head type question&gt; = &lt;+&gt;
	&lt;AdvP head type wh&gt; = &lt;+&gt;
	&lt;DP head case&gt; = absolutive
	&lt;CP head type root&gt; = -
	&lt;CP head type relative&gt; = -
	&lt;IP head type relative&gt; = -
	&lt;IP head fronted&gt; = none
	&lt;IP head type comp&gt; = -
	&lt;IP head type prefix comp&gt; = - | uses CP
	&lt;IP head type suffix comp&gt; = -
	&lt;IP head type root&gt; = -
	&lt;IP head type question&gt; = -
	&lt;V head type sentential&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;V head type motion&gt; = -
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;CP head type comma&gt; = -
	&lt;IP head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;AdvP head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;CP head type prefix&gt;
	&lt;VP head type prefix&gt; &lt;= &lt;IP head type prefix&gt;
	&lt;VP option&gt; = 8boabsQAdvP
</xsl:text>
</xsl:if>

















	<xsl:if test="normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//q/@contFront)='after' and normalize-space(//np/@case)='ergative' and normalize-space(//neg/@objVerbRequired)!='no' or normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//q/@contFront)='after' and normalize-space(//np/@case)='split' and normalize-space(//neg/@objVerbRequired)!='no'">
<xsl:text>
rule {VP option 8boabsQAdvPNegObjVerbRequired - V final, sentential complement with absolutive object, AdvP questioned}
VP = {CP / IP} DP AdvP V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head object&gt; = &lt;DP&gt;
	&lt;V embedded&gt; = &lt;CP&gt;
	&lt;V embedded&gt; = &lt;IP&gt;
	&lt;VP head type question&gt; = &lt;+&gt;
	&lt;AdvP head type wh&gt; = &lt;+&gt;
	&lt;DP head case&gt; = absolutive
	&lt;CP head type root&gt; = -
	&lt;CP head type relative&gt; = -
	&lt;IP head type relative&gt; = -
	&lt;IP head fronted&gt; = none
	&lt;IP head type comp&gt; = -
	&lt;IP head type prefix comp&gt; = - | uses CP
	&lt;IP head type suffix comp&gt; = -
	&lt;IP head type root&gt; = -
	&lt;IP head type question&gt; = -
	&lt;V head type sentential&gt; = +
	&lt;V head type transitive&gt; = +
	&lt;V head type motion&gt; = -
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;CP head type comma&gt; = -
	&lt;IP head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;AdvP head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;CP head type prefix&gt;
	&lt;VP head type prefix&gt; &lt;= &lt;IP head type prefix&gt;
	&lt;VP head&gt; == [object:[head:[type:[negative:+]]]] -&gt;  | if object negative, VP must be
                     [type:[negative:+]]
	&lt;VP option&gt; = 8boabsQAdvPNegObjVerbRequired
</xsl:text>
</xsl:if>

















	<xsl:if test="normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//np/@case)!='ergative' and normalize-space(//neg/@subjVerbRequired)='no'">
<xsl:text>
rule {VP option 8c - VSO with sentential complement}
VP = V DP {CP / IP}
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head subject&gt; = &lt;DP&gt;
	&lt;V embedded&gt; = &lt;CP&gt;
	&lt;V embedded&gt; = &lt;IP&gt;
	&lt;CP head type root&gt; = -
	&lt;CP head type relative&gt; = -
	&lt;IP head type relative&gt; = -
	&lt;IP head fronted&gt; = none
	&lt;IP head type comp&gt; = -
	&lt;IP head type prefix comp&gt; = - | uses CP
	&lt;IP head type suffix comp&gt; = -
	&lt;IP head type root&gt; = -
	&lt;IP head type question&gt; = -
	&lt;V head type sentential&gt; = +
	&lt;V head type motion&gt; = -
	&lt;VP head type pro-drop&gt; = -
	&lt;DP head case&gt; = nominative
	&lt;DP head type possessive&gt; = -  		|subject not possessive
	&lt;DP head type reflexive&gt; = -		|subject not reflexive
	&lt;DP head type reciprocal&gt; = -		|subject not reciprocal
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;V head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;CP head type comma&gt;
	&lt;VP head type comma&gt; &lt;= &lt;IP head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;CP head type suffix&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;IP head type suffix&gt;
	&lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP head fronted&gt; == ~[cat:DP]
	&lt;VP option&gt; = 8c
</xsl:text>
</xsl:if>







	<xsl:if test="normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//np/@case)!='ergative' and normalize-space(//neg/@subjVerbRequired)='yes'">
<xsl:text>
rule {VP option 8cNegSubjVerbRequired - VSO with sentential complement}
VP = V DP {CP / IP}
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head subject&gt; = &lt;DP&gt;
	&lt;V embedded&gt; = &lt;CP&gt;
	&lt;V embedded&gt; = &lt;IP&gt;
	&lt;CP head type root&gt; = -
	&lt;CP head type relative&gt; = -
	&lt;IP head type relative&gt; = -
	&lt;IP head fronted&gt; = none
	&lt;IP head type comp&gt; = -
	&lt;IP head type prefix comp&gt; = - | uses CP
	&lt;IP head type suffix comp&gt; = -
	&lt;IP head type root&gt; = -
	&lt;IP head type question&gt; = -
	&lt;V head type sentential&gt; = +
	&lt;V head type motion&gt; = -
	&lt;VP head type pro-drop&gt; = -
	&lt;DP head case&gt; = nominative
	&lt;DP head type possessive&gt; = -  		|subject not possessive
	&lt;DP head type reflexive&gt; = -		|subject not reflexive
	&lt;DP head type reciprocal&gt; = -		|subject not reciprocal
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;V head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;CP head type comma&gt;
	&lt;VP head type comma&gt; &lt;= &lt;IP head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;CP head type suffix&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;IP head type suffix&gt;
	&lt;VP head&gt; == [subject:[head:[type:[negative:+]]]] -&gt;  | if subject negative, VP must be
                     [type:[negative:+]]
                     &lt;VP head fronted&gt; == ~[cat:FocusP]
                     &lt;VP head fronted&gt; == ~[cat:DP]
                     &lt;VP option&gt; = 8cNegSubjVerbRequired
</xsl:text>
</xsl:if>







	<xsl:if test="normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//np/@case)!='ergative' and normalize-space(//ip/@proDrop)!='no'">
<xsl:text>
rule {VP option 8ci - VSO with sentential complement, imperative}
VP = V {CP / IP}
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;VP head infl mood imperative&gt; = +
	&lt;V embedded&gt; = &lt;CP&gt;
	&lt;V embedded&gt; = &lt;IP&gt;
	&lt;CP head type root&gt; = -
	&lt;CP head type relative&gt; = -
	&lt;IP head type relative&gt; = -
	&lt;IP head fronted&gt; = none
	&lt;IP head type comp&gt; = -
	&lt;IP head type prefix comp&gt; = - | uses CP
	&lt;IP head type suffix comp&gt; = -
	&lt;IP head type root&gt; = -
	&lt;IP head type question&gt; = -
	&lt;V head type sentential&gt; = +
	&lt;V head type motion&gt; = -
	&lt;VP head type question&gt; = -
	&lt;V head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;CP head type comma&gt;
	&lt;VP head type comma&gt; &lt;= &lt;IP head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;CP head type suffix&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;IP head type suffix&gt;
	 &lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP option&gt; = 8ci
</xsl:text>
</xsl:if>







	<xsl:if test="normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//np/@case)!='ergative' and normalize-space(//ip/@proDrop)='yes' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//np/@case)!='ergative' and normalize-space(//ip/@proDrop)='yesClitic'">
<xsl:text>
rule {VP option 8cp - VSO with sentential complement, pro-drop}
VP = V {CP / IP}
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;VP head type pro-drop&gt; = +
	&lt;V embedded&gt; = &lt;CP&gt;
	&lt;V embedded&gt; = &lt;IP&gt;
	&lt;CP head type root&gt; = -
	&lt;CP head type relative&gt; = -
	&lt;IP head type relative&gt; = -
	&lt;IP head fronted&gt; = none
	&lt;IP head type comp&gt; = -
	&lt;IP head type verbheaded&gt; = +
	&lt;IP head type prefix comp&gt; = - | uses CP
	&lt;IP head type suffix comp&gt; = -
	&lt;IP head type root&gt; = -
	&lt;IP head type question&gt; = -
	&lt;V head type sentential&gt; = +
	&lt;V head type motion&gt; = -
	&lt;V head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;CP head type comma&gt;
	&lt;VP head type comma&gt; &lt;= &lt;IP head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;CP head type suffix&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;IP head type suffix&gt;
	&lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP head fronted&gt; == ~[cat:DP]
	&lt;VP option&gt; = 8cp
</xsl:text>
</xsl:if>













	<xsl:if test="normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//np/@case)!='ergative' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)='no'">
<xsl:text>
rule {VP option 8co - VSO object with sentential complement}
VP = V DP DP_1 {CP / IP}
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head subject&gt; = &lt;DP&gt;
	&lt;V head object&gt; = &lt;DP_1&gt;
	&lt;V embedded&gt; = &lt;CP&gt;
	&lt;V embedded&gt; = &lt;IP&gt;
	&lt;CP head type root&gt; = -
	&lt;CP head type relative&gt; = -
	&lt;IP head type relative&gt; = -
	&lt;IP head fronted&gt; = none
	&lt;IP head type comp&gt; = -
	&lt;IP head type prefix comp&gt; = - | uses CP
	&lt;IP head type suffix comp&gt; = -
	&lt;IP head type root&gt; = -
	&lt;IP head type question&gt; = -
	&lt;V head type sentential&gt; = +
	&lt;V head type motion&gt; = -
	&lt;VP head type pro-drop&gt; = -
	&lt;DP head case&gt; = nominative
	&lt;DP_1 head case&gt; = accusative
	&lt;DP head type possessive&gt; = -  		|subject not possessive
	&lt;DP head type reflexive&gt; = -		|subject not reflexive
	&lt;DP head type reciprocal&gt; = -		|subject not reciprocal
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP_1 head type suffix poss&gt; = -         | only in possessor position
	&lt;DP_1 head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;DP_1 head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP_1 head type suffix copular&gt; = -
	&lt;V head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;DP_1 head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;CP head type comma&gt;
	&lt;VP head type comma&gt; &lt;= &lt;IP head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;CP head type suffix&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;IP head type suffix&gt;
	&lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP head fronted&gt; == ~[cat:DP]
	&lt;VP option&gt; = 8co
</xsl:text>
</xsl:if>









<xsl:if test="normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//np/@case)!='ergative' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)='no'">
<xsl:text>
rule {VP option 8cIO - VSO indirect object with sentential complement}
VP = V DP DP_1 {CP / IP}
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head subject&gt; = &lt;DP&gt;
	&lt;V head indirectobject&gt; = &lt;DP_1&gt;
	&lt;V embedded&gt; = &lt;CP&gt;
	&lt;V embedded&gt; = &lt;IP&gt;
	&lt;CP head type root&gt; = -
	&lt;CP head type relative&gt; = -
	&lt;IP head type relative&gt; = -
	&lt;IP head fronted&gt; = none
	&lt;IP head type comp&gt; = -
	&lt;IP head type prefix comp&gt; = - | uses CP
	&lt;IP head type suffix comp&gt; = -
	&lt;IP head type root&gt; = -
	&lt;IP head type question&gt; = -
	&lt;V head type sentential&gt; = +
	&lt;V head type motion&gt; = -
	&lt;VP head type pro-drop&gt; = -
	&lt;DP head case&gt; = nominative
	&lt;DP_1 head case&gt; = dative
	&lt;DP head type possessive&gt; = -  		|subject not possessive
	&lt;DP head type reflexive&gt; = -		|subject not reflexive
	&lt;DP head type reciprocal&gt; = -		|subject not reciprocal
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP_1 head type suffix poss&gt; = -         | only in possessor position
	&lt;DP_1 head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;DP_1 head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP_1 head type suffix copular&gt; = -
	&lt;V head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;DP_1 head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;CP head type comma&gt;
	&lt;VP head type comma&gt; &lt;= &lt;IP head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;CP head type suffix&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;IP head type suffix&gt;
	&lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP head fronted&gt; == ~[cat:DP]
	&lt;VP option&gt; = 8cIO
</xsl:text>
</xsl:if>









<xsl:if test="normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//np/@case)!='ergative' and normalize-space(//neg/@subjVerbRequired)='yes'">
<xsl:text>
rule {VP option 8coNegSubjVerbRequired - VSO object with sentential complement}
VP = V DP DP_1 {CP / IP}
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head subject&gt; = &lt;DP&gt;
	&lt;V head object&gt; = &lt;DP_1&gt;
	&lt;V embedded&gt; = &lt;CP&gt;
	&lt;V embedded&gt; = &lt;IP&gt;
	&lt;CP head type root&gt; = -
	&lt;CP head type relative&gt; = -
	&lt;IP head type relative&gt; = -
	&lt;IP head fronted&gt; = none
	&lt;IP head type comp&gt; = -
	&lt;IP head type prefix comp&gt; = - | uses CP
	&lt;IP head type suffix comp&gt; = -
	&lt;IP head type root&gt; = -
	&lt;IP head type question&gt; = -
	&lt;V head type sentential&gt; = +
	&lt;V head type motion&gt; = -
	&lt;VP head type pro-drop&gt; = -
	&lt;DP head case&gt; = nominative
	&lt;DP_1 head case&gt; = accusative
	&lt;DP head type possessive&gt; = -  		|subject not possessive
	&lt;DP head type reflexive&gt; = -		|subject not reflexive
	&lt;DP head type reciprocal&gt; = -		|subject not reciprocal
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP_1 head type suffix poss&gt; = -         | only in possessor position
	&lt;DP_1 head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;DP_1 head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP_1 head type suffix copular&gt; = -
	&lt;V head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;DP_1 head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;CP head type comma&gt;
	&lt;VP head type comma&gt; &lt;= &lt;IP head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;CP head type suffix&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;IP head type suffix&gt;
	&lt;VP head&gt; == [subject:[head:[type:[negative:+]]]] -&gt;  | if subject negative, VP must be
                     [type:[negative:+]]
                     &lt;VP head fronted&gt; == ~[cat:FocusP]
                     &lt;VP head fronted&gt; == ~[cat:DP]
                     &lt;VP option&gt; = 8coNegSubjVerbRequired
</xsl:text>
</xsl:if>







	<xsl:if test="normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//np/@case)!='ergative' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)!='no'">
<xsl:text>
rule {VP option 8coNegObjVerbRequired - VSO object with sentential complement}
VP = V DP DP_1 {CP / IP}
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head subject&gt; = &lt;DP&gt;
	&lt;V head object&gt; = &lt;DP_1&gt;
	&lt;V embedded&gt; = &lt;CP&gt;
	&lt;V embedded&gt; = &lt;IP&gt;
	&lt;CP head type root&gt; = -
	&lt;CP head type relative&gt; = -
	&lt;IP head type relative&gt; = -
	&lt;IP head fronted&gt; = none
	&lt;IP head type comp&gt; = -
	&lt;IP head type prefix comp&gt; = - | uses CP
	&lt;IP head type suffix comp&gt; = -
	&lt;IP head type root&gt; = -
	&lt;IP head type question&gt; = -
	&lt;V head type sentential&gt; = +
	&lt;V head type motion&gt; = -
	&lt;VP head type pro-drop&gt; = -
	&lt;DP head case&gt; = nominative
	&lt;DP_1 head case&gt; = accusative
	&lt;DP head type possessive&gt; = -  		|subject not possessive
	&lt;DP head type reflexive&gt; = -		|subject not reflexive
	&lt;DP head type reciprocal&gt; = -		|subject not reciprocal
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP_1 head type suffix poss&gt; = -         | only in possessor position
	&lt;DP_1 head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;DP_1 head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP_1 head type suffix copular&gt; = -
	&lt;V head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;DP_1 head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;CP head type comma&gt;
	&lt;VP head type comma&gt; &lt;= &lt;IP head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;CP head type suffix&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;IP head type suffix&gt;
	&lt;VP head&gt; == [object:[head:[type:[negative:+]]]] -&gt;  | if object negative, VP must be
                     [type:[negative:+]]
                     &lt;VP head fronted&gt; == ~[cat:FocusP]
                     &lt;VP head fronted&gt; == ~[cat:DP]
                     &lt;VP option&gt; = 8coNegObjVerbRequired
</xsl:text>
</xsl:if>









	<xsl:if test="normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//np/@case)!='ergative' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//neg/@objVerbRequired)!='no'">
<xsl:text>
rule {VP option 8coNegSubjorObjVerbRequired - VSO object with sentential complement}
VP = V DP DP_1 {CP / IP}
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head subject&gt; = &lt;DP&gt;
	&lt;V head object&gt; = &lt;DP_1&gt;
	&lt;V embedded&gt; = &lt;CP&gt;
	&lt;V embedded&gt; = &lt;IP&gt;
	&lt;CP head type root&gt; = -
	&lt;CP head type relative&gt; = -
	&lt;IP head type relative&gt; = -
	&lt;IP head fronted&gt; = none
	&lt;IP head type comp&gt; = -
	&lt;IP head type prefix comp&gt; = - | uses CP
	&lt;IP head type suffix comp&gt; = -
	&lt;IP head type root&gt; = -
	&lt;IP head type question&gt; = -
	&lt;V head type sentential&gt; = +
	&lt;V head type motion&gt; = -
	&lt;VP head type pro-drop&gt; = -
	&lt;DP head case&gt; = nominative
	&lt;DP_1 head case&gt; = accusative
	&lt;DP head type possessive&gt; = -  		|subject not possessive
	&lt;DP head type reflexive&gt; = -		|subject not reflexive
	&lt;DP head type reciprocal&gt; = -		|subject not reciprocal
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP_1 head type suffix poss&gt; = -         | only in possessor position
	&lt;DP_1 head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;DP_1 head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP_1 head type suffix copular&gt; = -
	&lt;V head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;DP_1 head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;CP head type comma&gt;
	&lt;VP head type comma&gt; &lt;= &lt;IP head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;CP head type suffix&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;IP head type suffix&gt;
	&lt;VP head&gt; == [subject:[head:[type:[negative:+]]]] -&gt;  | if subject negative, VP must be
                     [type:[negative:+]]
	&lt;VP head&gt; == [object:[head:[type:[negative:+]]]] -&gt;  | if object negative, VP must be
                     [type:[negative:+]]
                     &lt;VP head fronted&gt; == ~[cat:FocusP]
                     &lt;VP head fronted&gt; == ~[cat:DP]
                     &lt;VP option&gt; = 8coNegSubjorObjVerbRequired
</xsl:text>
</xsl:if>









	<xsl:if test="normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//np/@case)!='ergative' and normalize-space(//ip/@proDrop)!='no' and normalize-space(//neg/@objVerbRequired)='no'">
<xsl:text>
rule {VP option 8cio - VSO object with sentential complement, imperative}
VP = V DP_1 {CP / IP}
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;VP head infl mood imperative&gt; = +
	&lt;V head object&gt; = &lt;DP_1&gt;
	&lt;V embedded&gt; = &lt;CP&gt;
	&lt;V embedded&gt; = &lt;IP&gt;
	&lt;CP head type root&gt; = -
	&lt;CP head type relative&gt; = -
	&lt;IP head type relative&gt; = -
	&lt;IP head fronted&gt; = none
	&lt;IP head type comp&gt; = -
	&lt;IP head type prefix comp&gt; = - | uses CP
	&lt;IP head type suffix comp&gt; = -
	&lt;IP head type root&gt; = -
	&lt;IP head type question&gt; = -
	&lt;V head type sentential&gt; = +
	&lt;V head type motion&gt; = -
	&lt;DP_1 head case&gt; = accusative
	&lt;DP_1 head type suffix poss&gt; = -         | only in possessor position
	&lt;DP_1 head type prefix poss&gt; = -
	&lt;DP_1 head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP_1 head type suffix copular&gt; = -
	&lt;VP head type question&gt; = -
	&lt;V head type comma&gt; = -
	&lt;DP_1 head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;CP head type comma&gt;
	&lt;VP head type comma&gt; &lt;= &lt;IP head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;CP head type suffix&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;IP head type suffix&gt;
	 &lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP option&gt; = 8cio
</xsl:text>
</xsl:if>









	<xsl:if test="normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//np/@case)!='ergative' and normalize-space(//ip/@proDrop)!='no' and normalize-space(//neg/@objVerbRequired)!='no'">
<xsl:text>
rule {VP option 8cioNegObjVerbRequired - VSO object with sentential complement, imperative}
VP = V DP_1 {CP / IP}
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;VP head infl mood imperative&gt; = +
	&lt;V head object&gt; = &lt;DP_1&gt;
	&lt;V embedded&gt; = &lt;CP&gt;
	&lt;V embedded&gt; = &lt;IP&gt;
	&lt;CP head type root&gt; = -
	&lt;CP head type relative&gt; = -
	&lt;IP head type relative&gt; = -
	&lt;IP head fronted&gt; = none
	&lt;IP head type comp&gt; = -
	&lt;IP head type prefix comp&gt; = - | uses CP
	&lt;IP head type suffix comp&gt; = -
	&lt;IP head type root&gt; = -
	&lt;IP head type question&gt; = -
	&lt;V head type sentential&gt; = +
	&lt;V head type motion&gt; = -
	&lt;DP_1 head case&gt; = accusative
	&lt;DP_1 head type suffix poss&gt; = -         | only in possessor position
	&lt;DP_1 head type prefix poss&gt; = -
	&lt;DP_1 head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP_1 head type suffix copular&gt; = -
	&lt;VP head type question&gt; = -
	&lt;V head type comma&gt; = -
	&lt;DP_1 head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;CP head type comma&gt;
	&lt;VP head type comma&gt; &lt;= &lt;IP head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;CP head type suffix&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;IP head type suffix&gt;
	&lt;VP head&gt; == [object:[head:[type:[negative:+]]]] -&gt;  | if object negative, VP must be
                     [type:[negative:+]]
	 &lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP option&gt; = 8cioNegObjVerbRequired
</xsl:text>
</xsl:if>









	<xsl:if test="normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//np/@case)!='ergative' and normalize-space(//ip/@proDrop)='yes' and normalize-space(//neg/@objVerbRequired)='no' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//np/@case)!='ergative' and normalize-space(//ip/@proDrop)='yesClitic' and normalize-space(//neg/@objVerbRequired)='no'">
<xsl:text>
rule {VP option 8cpo - VSO object with sentential complement, pro-drop}
VP = V DP_1 {CP / IP}
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;VP head type pro-drop&gt; = +
	&lt;V head object&gt; = &lt;DP_1&gt;
	&lt;V embedded&gt; = &lt;CP&gt;
	&lt;V embedded&gt; = &lt;IP&gt;
	&lt;CP head type root&gt; = -
	&lt;CP head type relative&gt; = -
	&lt;IP head type relative&gt; = -
	&lt;IP head fronted&gt; = none
	&lt;IP head type comp&gt; = -
	&lt;IP head type prefix comp&gt; = - | uses CP
	&lt;IP head type suffix comp&gt; = -
	&lt;IP head type root&gt; = -
	&lt;IP head type question&gt; = -
	&lt;V head type sentential&gt; = +
	&lt;V head type motion&gt; = -
	&lt;DP_1 head case&gt; = accusative
	&lt;DP_1 head type suffix poss&gt; = -         | only in possessor position
	&lt;DP_1 head type prefix poss&gt; = -
	&lt;DP_1 head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP_1 head type suffix copular&gt; = -
	&lt;V head type comma&gt; = -
	&lt;DP_1 head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;CP head type comma&gt;
	&lt;VP head type comma&gt; &lt;= &lt;IP head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;CP head type suffix&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;IP head type suffix&gt;
	&lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP head fronted&gt; == ~[cat:DP]
	&lt;VP option&gt; = 8cpo
</xsl:text>
</xsl:if>

















	<xsl:if test="normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//np/@case)!='ergative' and normalize-space(//ip/@proDrop)='yes' and normalize-space(//neg/@objVerbRequired)!='no' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//np/@case)!='ergative' and normalize-space(//ip/@proDrop)='yesClitic' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//neg/@objVerbRequired)!='no'">
<xsl:text>
rule {VP option 8cpoNegObjVerbRequired - VSO object with sentential complement, pro-drop}
VP = V DP_1 {CP / IP}
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;VP head type pro-drop&gt; = +
	&lt;V head object&gt; = &lt;DP_1&gt;
	&lt;V embedded&gt; = &lt;CP&gt;
	&lt;V embedded&gt; = &lt;IP&gt;
	&lt;CP head type root&gt; = -
	&lt;CP head type relative&gt; = -
	&lt;IP head type relative&gt; = -
	&lt;IP head fronted&gt; = none
	&lt;IP head type comp&gt; = -
	&lt;IP head type prefix comp&gt; = - | uses CP
	&lt;IP head type suffix comp&gt; = -
	&lt;IP head type root&gt; = -
	&lt;IP head type question&gt; = -
	&lt;V head type sentential&gt; = +
	&lt;V head type motion&gt; = -
	&lt;DP_1 head case&gt; = accusative
	&lt;DP_1 head type suffix poss&gt; = -         | only in possessor position
	&lt;DP_1 head type prefix poss&gt; = -
	&lt;DP_1 head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP_1 head type suffix copular&gt; = -
	&lt;V head type comma&gt; = -
	&lt;DP_1 head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;CP head type comma&gt;
	&lt;VP head type comma&gt; &lt;= &lt;IP head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;CP head type suffix&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;IP head type suffix&gt;
	&lt;VP head&gt; == [object:[head:[type:[negative:+]]]] -&gt;  | if object negative, VP must be
                     [type:[negative:+]]
                     &lt;VP head fronted&gt; == ~[cat:FocusP]
                     &lt;VP head fronted&gt; == ~[cat:DP]
                     &lt;VP option&gt; = 8cpoNegObjVerbRequired
</xsl:text>
</xsl:if>



















	<xsl:if test="normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//np/@case)!='ergative' and normalize-space(//neg/@subjVerbRequired)='no'">
<xsl:text>
rule {VP option 8d - OSV with sentential complement}
VP = {CP / IP} DP V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head subject&gt; = &lt;DP&gt;
	&lt;V embedded&gt; = &lt;CP&gt;
	&lt;V embedded&gt; = &lt;IP&gt;
	&lt;CP head type root&gt; = -
	&lt;CP head type relative&gt; = -
	&lt;IP head type relative&gt; = -
	&lt;IP head fronted&gt; = none
	&lt;IP head type comp&gt; = -
	&lt;IP head type prefix comp&gt; = - | uses CP
	&lt;IP head type suffix comp&gt; = -
	&lt;IP head type root&gt; = -
	&lt;IP head type question&gt; = -
	&lt;V head type sentential&gt; = +
	&lt;V head type motion&gt; = -
	&lt;VP head type pro-drop&gt; = -
	&lt;DP head case&gt; = nominative
	&lt;DP head type possessive&gt; = -  		|subject not possessive
	&lt;DP head type reflexive&gt; = -		|subject not reflexive
	&lt;DP head type reciprocal&gt; = -		|subject not reciprocal
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;CP head type comma&gt; = -
	&lt;IP head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;CP head type prefix&gt;
	&lt;VP head type prefix&gt; &lt;= &lt;IP head type prefix&gt;
	&lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP head fronted&gt; == ~[cat:DP]
	&lt;VP option&gt; = 8d
</xsl:text>
</xsl:if>







	<xsl:if test="normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//np/@case)!='ergative' and normalize-space(//neg/@subjVerbRequired)='yes'">
<xsl:text>
rule {VP option 8dNegSubjVerbRequired - OSV with sentential complement}
VP = {CP / IP} DP V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head subject&gt; = &lt;DP&gt;
	&lt;V embedded&gt; = &lt;CP&gt;
	&lt;V embedded&gt; = &lt;IP&gt;
	&lt;CP head type root&gt; = -
	&lt;CP head type relative&gt; = -
	&lt;IP head type relative&gt; = -
	&lt;IP head fronted&gt; = none
	&lt;IP head type comp&gt; = -
	&lt;IP head type prefix comp&gt; = - | uses CP
	&lt;IP head type suffix comp&gt; = -
	&lt;IP head type root&gt; = -
	&lt;IP head type question&gt; = -
	&lt;V head type sentential&gt; = +
	&lt;V head type motion&gt; = -
	&lt;VP head type pro-drop&gt; = -
	&lt;DP head case&gt; = nominative
	&lt;DP head type possessive&gt; = -  		|subject not possessive
	&lt;DP head type reflexive&gt; = -		|subject not reflexive
	&lt;DP head type reciprocal&gt; = -		|subject not reciprocal
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;CP head type comma&gt; = -
	&lt;IP head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;CP head type prefix&gt;
	&lt;VP head type prefix&gt; &lt;= &lt;IP head type prefix&gt;
	&lt;VP head&gt; == [subject:[head:[type:[negative:+]]]] -&gt;  | if subject negative, VP must be
                     [type:[negative:+]]
                     &lt;VP head fronted&gt; == ~[cat:FocusP]
                     &lt;VP head fronted&gt; == ~[cat:DP]
                     &lt;VP option&gt; = 8dNegSubjVerbRequired
</xsl:text>
</xsl:if>







	<xsl:if test="normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//np/@case)!='ergative' and normalize-space(//ip/@proDrop)!='no'">
<xsl:text>
rule {VP option 8di - OSV with sentential complement, imperative}
VP = {CP / IP} V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;VP head infl mood imperative&gt; = +
	&lt;V embedded&gt; = &lt;CP&gt;
	&lt;V embedded&gt; = &lt;IP&gt;
	&lt;CP head type root&gt; = -
	&lt;CP head type relative&gt; = -
	&lt;IP head type relative&gt; = -
	&lt;IP head fronted&gt; = none
	&lt;IP head type comp&gt; = -
	&lt;IP head type prefix comp&gt; = - | uses CP
	&lt;IP head type suffix comp&gt; = -
	&lt;IP head type root&gt; = -
	&lt;IP head type question&gt; = -
	&lt;V head type sentential&gt; = +
	&lt;V head type motion&gt; = -
	&lt;VP head type question&gt; = -
	&lt;CP head type comma&gt; = -
	&lt;IP head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;CP head type prefix&gt;
	&lt;VP head type prefix&gt; &lt;= &lt;IP head type prefix&gt;
	 &lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP option&gt; = 8di
</xsl:text>
</xsl:if>







	<xsl:if test="normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//np/@case)!='ergative' and normalize-space(//ip/@proDrop)='yes' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//np/@case)!='ergative' and normalize-space(//ip/@proDrop)='yesClitic'">
<xsl:text>
rule {VP option 8dp - OSV with sentential complement, pro-drop}
VP = {CP / IP} V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;VP head type pro-drop&gt; = +
	&lt;V embedded&gt; = &lt;CP&gt;
	&lt;V embedded&gt; = &lt;IP&gt;
	&lt;CP head type root&gt; = -
	&lt;CP head type relative&gt; = -
	&lt;IP head type relative&gt; = -
	&lt;IP head fronted&gt; = none
	&lt;IP head type comp&gt; = -
	&lt;IP head type prefix comp&gt; = - | uses CP
	&lt;IP head type suffix comp&gt; = -
	&lt;IP head type root&gt; = -
	&lt;IP head type question&gt; = -
	&lt;V head type sentential&gt; = +
	&lt;V head type motion&gt; = -
	&lt;CP head type comma&gt; = -
	&lt;IP head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;CP head type prefix&gt;
	&lt;VP head type prefix&gt; &lt;= &lt;IP head type prefix&gt;
	&lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP head fronted&gt; == ~[cat:DP]
	&lt;VP option&gt; = 8dp
</xsl:text>
</xsl:if>













	<xsl:if test="normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//np/@case)!='ergative' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)='no'">
<xsl:text>
rule {VP option 8do - OSV object with sentential complement}
VP = {CP / IP} DP_1 DP V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head subject&gt; = &lt;DP&gt;
	&lt;V head object&gt; = &lt;DP_1&gt;
	&lt;V embedded&gt; = &lt;CP&gt;
	&lt;V embedded&gt; = &lt;IP&gt;
	&lt;CP head type root&gt; = -
	&lt;CP head type relative&gt; = -
	&lt;IP head type relative&gt; = -
	&lt;IP head fronted&gt; = none
	&lt;IP head type comp&gt; = -
	&lt;IP head type prefix comp&gt; = - | uses CP
	&lt;IP head type suffix comp&gt; = -
	&lt;IP head type root&gt; = -
	&lt;IP head type question&gt; = -
	&lt;V head type sentential&gt; = +
	&lt;V head type motion&gt; = -
	&lt;VP head type pro-drop&gt; = -
	&lt;DP head case&gt; = nominative
	&lt;DP_1 head case&gt; = accusative
	&lt;DP head type possessive&gt; = -  		|subject not possessive
	&lt;DP head type reflexive&gt; = -		|subject not reflexive
	&lt;DP head type reciprocal&gt; = -		|subject not reciprocal
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP_1 head type suffix poss&gt; = -         | only in possessor position
	&lt;DP_1 head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;DP_1 head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP_1 head type suffix copular&gt; = -
	&lt;CP head type comma&gt; = -
	&lt;IP head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;DP_1 head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;CP head type prefix&gt;
	&lt;VP head type prefix&gt; &lt;= &lt;IP head type prefix&gt;
	&lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP head fronted&gt; == ~[cat:DP]
	&lt;VP option&gt; = 8do
</xsl:text>
</xsl:if>









	<xsl:if test="normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//np/@case)!='ergative' and normalize-space(//neg/@subjVerbRequired)='yes'">
<xsl:text>
rule {VP option 8doNegSubjVerbRequired - OSV object with sentential complement}
VP = {CP / IP} DP_1 DP V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head subject&gt; = &lt;DP&gt;
	&lt;V head object&gt; = &lt;DP_1&gt;
	&lt;V embedded&gt; = &lt;CP&gt;
	&lt;V embedded&gt; = &lt;IP&gt;
	&lt;CP head type root&gt; = -
	&lt;CP head type relative&gt; = -
	&lt;IP head type relative&gt; = -
	&lt;IP head fronted&gt; = none
	&lt;IP head type comp&gt; = -
	&lt;IP head type prefix comp&gt; = - | uses CP
	&lt;IP head type suffix comp&gt; = -
	&lt;IP head type root&gt; = -
	&lt;IP head type question&gt; = -
	&lt;V head type sentential&gt; = +
	&lt;V head type motion&gt; = -
	&lt;VP head type pro-drop&gt; = -
	&lt;DP head case&gt; = nominative
	&lt;DP_1 head case&gt; = accusative
	&lt;DP head type possessive&gt; = -  		|subject not possessive
	&lt;DP head type reflexive&gt; = -		|subject not reflexive
	&lt;DP head type reciprocal&gt; = -		|subject not reciprocal
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP_1 head type suffix poss&gt; = -         | only in possessor position
	&lt;DP_1 head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;DP_1 head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP_1 head type suffix copular&gt; = -
	&lt;CP head type comma&gt; = -
	&lt;IP head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;DP_1 head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;CP head type prefix&gt;
	&lt;VP head type prefix&gt; &lt;= &lt;IP head type prefix&gt;
	&lt;VP head&gt; == [subject:[head:[type:[negative:+]]]] -&gt;  | if subject negative, VP must be
                     [type:[negative:+]]
                     &lt;VP head fronted&gt; == ~[cat:FocusP]
                     &lt;VP head fronted&gt; == ~[cat:DP]
                     &lt;VP option&gt; = 8doNegSubjVerbRequired
</xsl:text>
</xsl:if>







	<xsl:if test="normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//np/@case)!='ergative' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)!='no'">
<xsl:text>
rule {VP option 8doNegObjVerbRequired - OSV object with sentential complement}
VP = {CP / IP} DP_1 DP V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head subject&gt; = &lt;DP&gt;
	&lt;V head object&gt; = &lt;DP_1&gt;
	&lt;V embedded&gt; = &lt;CP&gt;
	&lt;V embedded&gt; = &lt;IP&gt;
	&lt;CP head type root&gt; = -
	&lt;CP head type relative&gt; = -
	&lt;IP head type relative&gt; = -
	&lt;IP head fronted&gt; = none
	&lt;IP head type comp&gt; = -
	&lt;IP head type prefix comp&gt; = - | uses CP
	&lt;IP head type suffix comp&gt; = -
	&lt;IP head type root&gt; = -
	&lt;IP head type question&gt; = -
	&lt;V head type sentential&gt; = +
	&lt;V head type motion&gt; = -
	&lt;VP head type pro-drop&gt; = -
	&lt;DP head case&gt; = nominative
	&lt;DP_1 head case&gt; = accusative
	&lt;DP head type possessive&gt; = -  		|subject not possessive
	&lt;DP head type reflexive&gt; = -		|subject not reflexive
	&lt;DP head type reciprocal&gt; = -		|subject not reciprocal
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP_1 head type suffix poss&gt; = -         | only in possessor position
	&lt;DP_1 head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;DP_1 head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP_1 head type suffix copular&gt; = -
	&lt;CP head type comma&gt; = -
	&lt;IP head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;DP_1 head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;CP head type prefix&gt;
	&lt;VP head type prefix&gt; &lt;= &lt;IP head type prefix&gt;
	&lt;VP head&gt; == [object:[head:[type:[negative:+]]]] -&gt;  | if object negative, VP must be
                     [type:[negative:+]]
                     &lt;VP head fronted&gt; == ~[cat:FocusP]
                     &lt;VP head fronted&gt; == ~[cat:DP]
                     &lt;VP option&gt; = 8doNegObjVerbRequired
</xsl:text>
</xsl:if>









	<xsl:if test="normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//np/@case)!='ergative' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//neg/@objVerbRequired)!='no'">
<xsl:text>
rule {VP option 8doNegSubjorObjVerbRequired - OSV object with sentential complement}
VP = {CP / IP} DP_1 DP V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head subject&gt; = &lt;DP&gt;
	&lt;V head object&gt; = &lt;DP_1&gt;
	&lt;V embedded&gt; = &lt;CP&gt;
	&lt;V embedded&gt; = &lt;IP&gt;
	&lt;CP head type root&gt; = -
	&lt;CP head type relative&gt; = -
	&lt;IP head type relative&gt; = -
	&lt;IP head fronted&gt; = none
	&lt;IP head type comp&gt; = -
	&lt;IP head type prefix comp&gt; = - | uses CP
	&lt;IP head type suffix comp&gt; = -
	&lt;IP head type root&gt; = -
	&lt;IP head type question&gt; = -
	&lt;V head type sentential&gt; = +
	&lt;V head type motion&gt; = -
	&lt;VP head type pro-drop&gt; = -
	&lt;DP head case&gt; = nominative
	&lt;DP_1 head case&gt; = accusative
	&lt;DP head type possessive&gt; = -  		|subject not possessive
	&lt;DP head type reflexive&gt; = -		|subject not reflexive
	&lt;DP head type reciprocal&gt; = -		|subject not reciprocal
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP_1 head type suffix poss&gt; = -         | only in possessor position
	&lt;DP_1 head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;DP_1 head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP_1 head type suffix copular&gt; = -
	&lt;CP head type comma&gt; = -
	&lt;IP head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;DP_1 head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;CP head type prefix&gt;
	&lt;VP head type prefix&gt; &lt;= &lt;IP head type prefix&gt;
	&lt;VP head&gt; == [subject:[head:[type:[negative:+]]]] -&gt;  | if subject negative, VP must be
                     [type:[negative:+]]
	&lt;VP head&gt; == [object:[head:[type:[negative:+]]]] -&gt;  | if object negative, VP must be
                     [type:[negative:+]]
                     &lt;VP head fronted&gt; == ~[cat:FocusP]
                     &lt;VP head fronted&gt; == ~[cat:DP]
                     &lt;VP option&gt; = 8doNegSubjorObjVerbRequired
</xsl:text>
</xsl:if>









	<xsl:if test="normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//np/@case)!='ergative' and normalize-space(//ip/@proDrop)!='no' and normalize-space(//neg/@objVerbRequired)='no'">
<xsl:text>
rule {VP option 8dio - OSV object with sentential complement, imperative}
VP = {CP / IP} DP_1 V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;VP head infl mood imperative&gt; = +
	&lt;V head object&gt; = &lt;DP_1&gt;
	&lt;V embedded&gt; = &lt;CP&gt;
	&lt;V embedded&gt; = &lt;IP&gt;
	&lt;CP head type root&gt; = -
	&lt;CP head type relative&gt; = -
	&lt;IP head type relative&gt; = -
	&lt;IP head fronted&gt; = none
	&lt;IP head type comp&gt; = -
	&lt;IP head type prefix comp&gt; = - | uses CP
	&lt;IP head type suffix comp&gt; = -
	&lt;IP head type root&gt; = -
	&lt;IP head type question&gt; = -
	&lt;V head type sentential&gt; = +
	&lt;V head type motion&gt; = -
	&lt;DP_1 head case&gt; = accusative
	&lt;DP_1 head type suffix poss&gt; = -         | only in possessor position
	&lt;DP_1 head type prefix poss&gt; = -
	&lt;DP_1 head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP_1 head type suffix copular&gt; = -
	&lt;VP head type question&gt; = -
	&lt;CP head type comma&gt; = -
	&lt;IP head type comma&gt; = -
	&lt;DP_1 head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;CP head type prefix&gt;
	&lt;VP head type prefix&gt; &lt;= &lt;IP head type prefix&gt;
	 &lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP option&gt; = 8dio
</xsl:text>
</xsl:if>









	<xsl:if test="normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//np/@case)!='ergative' and normalize-space(//ip/@proDrop)!='no' and normalize-space(//neg/@objVerbRequired)!='no'">
<xsl:text>
rule {VP option 8dioNegObjVerbRequired - OSV object with sentential complement, imperative}
VP = {CP / IP} DP_1 V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;VP head infl mood imperative&gt; = +
	&lt;V head object&gt; = &lt;DP_1&gt;
	&lt;V embedded&gt; = &lt;CP&gt;
	&lt;V embedded&gt; = &lt;IP&gt;
	&lt;CP head type root&gt; = -
	&lt;CP head type relative&gt; = -
	&lt;IP head type relative&gt; = -
	&lt;IP head fronted&gt; = none
	&lt;IP head type comp&gt; = -
	&lt;IP head type prefix comp&gt; = - | uses CP
	&lt;IP head type suffix comp&gt; = -
	&lt;IP head type root&gt; = -
	&lt;IP head type question&gt; = -
	&lt;V head type sentential&gt; = +
	&lt;V head type motion&gt; = -
	&lt;DP_1 head case&gt; = accusative
	&lt;DP_1 head type suffix poss&gt; = -         | only in possessor position
	&lt;DP_1 head type prefix poss&gt; = -
	&lt;DP_1 head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP_1 head type suffix copular&gt; = -
	&lt;VP head type question&gt; = -
	&lt;CP head type comma&gt; = -
	&lt;IP head type comma&gt; = -
	&lt;DP_1 head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;CP head type prefix&gt;
	&lt;VP head type prefix&gt; &lt;= &lt;IP head type prefix&gt;
	&lt;VP head&gt; == [object:[head:[type:[negative:+]]]] -&gt;  | if object negative, VP must be
                     [type:[negative:+]]
	 &lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP option&gt; = 8dioNegObjVerbRequired
</xsl:text>
</xsl:if>









	<xsl:if test="normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//np/@case)!='ergative' and normalize-space(//ip/@proDrop)='yes' and normalize-space(//neg/@objVerbRequired)='no' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//np/@case)!='ergative' and normalize-space(//ip/@proDrop)='yesClitic' and normalize-space(//neg/@objVerbRequired)='no'">
<xsl:text>
rule {VP option 8dpo - OSV object with sentential complement, pro-drop}
VP = {CP / IP} DP_1 V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;VP head type pro-drop&gt; = +
	&lt;V head object&gt; = &lt;DP_1&gt;
	&lt;V embedded&gt; = &lt;CP&gt;
	&lt;V embedded&gt; = &lt;IP&gt;
	&lt;CP head type root&gt; = -
	&lt;CP head type relative&gt; = -
	&lt;IP head type relative&gt; = -
	&lt;IP head fronted&gt; = none
	&lt;IP head type comp&gt; = -
	&lt;IP head type prefix comp&gt; = - | uses CP
	&lt;IP head type suffix comp&gt; = -
	&lt;IP head type root&gt; = -
	&lt;IP head type question&gt; = -
	&lt;V head type sentential&gt; = +
	&lt;V head type motion&gt; = -
	&lt;DP_1 head case&gt; = accusative
	&lt;DP_1 head type suffix poss&gt; = -         | only in possessor position
	&lt;DP_1 head type prefix poss&gt; = -
	&lt;DP_1 head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP_1 head type suffix copular&gt; = -
	&lt;CP head type comma&gt; = -
	&lt;IP head type comma&gt; = -
	&lt;DP_1 head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;CP head type prefix&gt;
	&lt;VP head type prefix&gt; &lt;= &lt;IP head type prefix&gt;
	&lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP head fronted&gt; == ~[cat:DP]
	&lt;VP option&gt; = 8dpo
</xsl:text>
</xsl:if>

















	<xsl:if test="normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//np/@case)!='ergative' and normalize-space(//ip/@proDrop)='yes' and normalize-space(//neg/@objVerbRequired)!='no' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//np/@case)!='ergative' and normalize-space(//ip/@proDrop)='yesClitic' and normalize-space(//neg/@objVerbRequired)!='no'">
<xsl:text>
rule {VP option 8dpoNegObjVerbRequired - OSV object with sentential complement, pro-drop}
VP = {CP / IP} DP_1 V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;VP head type pro-drop&gt; = +
	&lt;V head object&gt; = &lt;DP_1&gt;
	&lt;V embedded&gt; = &lt;CP&gt;
	&lt;V embedded&gt; = &lt;IP&gt;
	&lt;CP head type root&gt; = -
	&lt;CP head type relative&gt; = -
	&lt;IP head type relative&gt; = -
	&lt;IP head fronted&gt; = none
	&lt;IP head type comp&gt; = -
	&lt;IP head type prefix comp&gt; = - | uses CP
	&lt;IP head type suffix comp&gt; = -
	&lt;IP head type root&gt; = -
	&lt;IP head type question&gt; = -
	&lt;V head type sentential&gt; = +
	&lt;V head type motion&gt; = -
	&lt;DP_1 head case&gt; = accusative
	&lt;DP_1 head type suffix poss&gt; = -         | only in possessor position
	&lt;DP_1 head type prefix poss&gt; = -
	&lt;DP_1 head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP_1 head type suffix copular&gt; = -
	&lt;CP head type comma&gt; = -
	&lt;IP head type comma&gt; = -
	&lt;DP_1 head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;CP head type prefix&gt;
	&lt;VP head type prefix&gt; &lt;= &lt;IP head type prefix&gt;
	&lt;VP head&gt; == [object:[head:[type:[negative:+]]]] -&gt;  | if object negative, VP must be
                     [type:[negative:+]]
                     &lt;VP head fronted&gt; == ~[cat:FocusP]
                     &lt;VP head fronted&gt; == ~[cat:DP]
                     &lt;VP option&gt; = 8dpoNegObjVerbRequired
</xsl:text>
</xsl:if>

















	<xsl:if test="normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//np/@case)='ergative' and normalize-space(//neg/@subjVerbRequired)='no' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//np/@case)='split' and normalize-space(//neg/@subjVerbRequired)='no'">
<xsl:text>
rule {VP option 8e - VSO with sentential complement, ergative}
VP = V DP {CP / IP}
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head subject&gt; = &lt;DP&gt;
	&lt;V embedded&gt; = &lt;CP&gt;
	&lt;V embedded&gt; = &lt;IP&gt;
	&lt;CP head type root&gt; = -
	&lt;CP head type relative&gt; = -
	&lt;IP head type relative&gt; = -
	&lt;IP head type comp&gt; = -
	&lt;IP head fronted&gt; = none
	&lt;IP head type prefix comp&gt; = - | uses CP
	&lt;IP head type suffix comp&gt; = -
	&lt;IP head type root&gt; = -
	&lt;IP head type question&gt; = -
	&lt;V head type sentential&gt; = +
	&lt;V head type motion&gt; = -
	&lt;VP head type pro-drop&gt; = -
	&lt;DP head case&gt; = ergative     | assume like transitive
	&lt;DP head type possessive&gt; = -  		|subject not possessive
	&lt;DP head type reflexive&gt; = -		|subject not reflexive
	&lt;DP head type reciprocal&gt; = -		|subject not reciprocal
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;V head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;CP head type comma&gt;
	&lt;VP head type comma&gt; &lt;= &lt;IP head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;CP head type suffix&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;IP head type suffix&gt;
	&lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP head fronted&gt; == ~[cat:DP]
	&lt;VP option&gt; = 8e
</xsl:text>
</xsl:if>













	<xsl:if test="normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//np/@case)='ergative' and normalize-space(//neg/@subjVerbRequired)='yes' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//np/@case)='split' and normalize-space(//neg/@subjVerbRequired)='yes'">
<xsl:text>
rule {VP option 8eNegSubjVerbRequired - VSO with sentential complement, ergative}
VP = V DP {CP / IP}
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head subject&gt; = &lt;DP&gt;
	&lt;V embedded&gt; = &lt;CP&gt;
	&lt;V embedded&gt; = &lt;IP&gt;
	&lt;CP head type root&gt; = -
	&lt;CP head type relative&gt; = -
	&lt;IP head type relative&gt; = -
	&lt;IP head fronted&gt; = none
	&lt;IP head type comp&gt; = -
	&lt;IP head type prefix comp&gt; = - | uses CP
	&lt;IP head type suffix comp&gt; = -
	&lt;IP head type root&gt; = -
	&lt;IP head type question&gt; = -
	&lt;V head type sentential&gt; = +
	&lt;V head type motion&gt; = -
	&lt;VP head type pro-drop&gt; = -
	&lt;DP head case&gt; = ergative     | assume like transitive
	&lt;DP head type possessive&gt; = -  		|subject not possessive
	&lt;DP head type reflexive&gt; = -		|subject not reflexive
	&lt;DP head type reciprocal&gt; = -		|subject not reciprocal
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;V head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;CP head type comma&gt;
	&lt;VP head type comma&gt; &lt;= &lt;IP head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;CP head type suffix&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;IP head type suffix&gt;
	&lt;VP head&gt; == [subject:[head:[type:[negative:+]]]] -&gt;  | if subject negative, VP must be
                     [type:[negative:+]]
                     &lt;VP head fronted&gt; == ~[cat:FocusP]
                     &lt;VP head fronted&gt; == ~[cat:DP]
                     &lt;VP option&gt; = 8eNegSubjVerbRequired
</xsl:text>
</xsl:if>













	<xsl:if test="normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//ip/@proDrop)!='no' and normalize-space(//np/@case)='ergative' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//ip/@proDrop)!='no' and normalize-space(//np/@case)='split'">
<xsl:text>
rule {VP option 8ei - VSO with sentential complement, imperative, ergative}
VP = V {CP / IP}
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;VP head infl mood imperative&gt; = +
	&lt;V embedded&gt; = &lt;CP&gt;
	&lt;V embedded&gt; = &lt;IP&gt;
	&lt;CP head type root&gt; = -
	&lt;CP head type relative&gt; = -
	&lt;IP head type relative&gt; = -
	&lt;IP head fronted&gt; = none
	&lt;IP head type comp&gt; = -
	&lt;IP head type prefix comp&gt; = - | uses CP
	&lt;IP head type suffix comp&gt; = -
	&lt;IP head type root&gt; = -
	&lt;IP head type question&gt; = -
	&lt;V head type sentential&gt; = +
	&lt;V head type motion&gt; = -
	&lt;DP head case&gt; = ergative     | assume like transitive
	&lt;VP head type question&gt; = -
	&lt;V head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;CP head type comma&gt;
	&lt;VP head type comma&gt; &lt;= &lt;IP head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;CP head type suffix&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;IP head type suffix&gt;
	 &lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP option&gt; = 8ei
</xsl:text>
</xsl:if>













	<xsl:if test="normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//ip/@proDrop)='yes' and normalize-space(//np/@case)='ergative' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//ip/@proDrop)='yes' and normalize-space(//np/@case)='split' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//ip/@proDrop)='yesClitic' and normalize-space(//np/@case)='ergative' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//ip/@proDrop)='yesClitic' and normalize-space(//np/@case)='split'">
<xsl:text>
rule {VP option 8ep - VSO with sentential complement, pro-drop, ergative}
VP = V {CP / IP}
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;VP head type pro-drop&gt; = +
	&lt;V embedded&gt; = &lt;CP&gt;
	&lt;V embedded&gt; = &lt;IP&gt;
	&lt;CP head type root&gt; = -
	&lt;CP head type relative&gt; = -
	&lt;IP head type relative&gt; = -
	&lt;IP head fronted&gt; = none
	&lt;IP head type comp&gt; = -
	&lt;IP head type prefix comp&gt; = - | uses CP
	&lt;IP head type suffix comp&gt; = -
	&lt;IP head type root&gt; = -
	&lt;IP head type question&gt; = -
	&lt;V head type sentential&gt; = +
	&lt;V head type motion&gt; = -
	&lt;V head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;CP head type comma&gt;
	&lt;VP head type comma&gt; &lt;= &lt;IP head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;CP head type suffix&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;IP head type suffix&gt;
	&lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP head fronted&gt; == ~[cat:DP]
	&lt;VP option&gt; = 8ep
</xsl:text>
</xsl:if>

























	<xsl:if test="normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//np/@case)='ergative' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)='no' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//np/@case)='split' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)='no'">
<xsl:text>
rule {VP option 8eo - VSO object with sentential complement, ergative}
VP = V DP DP_1 {CP / IP}
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head subject&gt; = &lt;DP&gt;
	&lt;V head object&gt; = &lt;DP_1&gt;
	&lt;V embedded&gt; = &lt;CP&gt;
	&lt;V embedded&gt; = &lt;IP&gt;
	&lt;CP head type root&gt; = -
	&lt;CP head type relative&gt; = -
	&lt;IP head type relative&gt; = -
	&lt;IP head fronted&gt; = none
	&lt;IP head type comp&gt; = -
	&lt;IP head type prefix comp&gt; = - | uses CP
	&lt;IP head type suffix comp&gt; = -
	&lt;IP head type root&gt; = -
	&lt;IP head type question&gt; = -
	&lt;V head type sentential&gt; = +
	&lt;V head type motion&gt; = -
	&lt;VP head type pro-drop&gt; = -
	&lt;DP head case&gt; = ergative     | assume like transitive
	&lt;DP_1 head case&gt; = absolutive
	&lt;DP head type possessive&gt; = -  		|subject not possessive
	&lt;DP head type reflexive&gt; = -		|subject not reflexive
	&lt;DP head type reciprocal&gt; = -		|subject not reciprocal
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP_1 head type suffix poss&gt; = -         | only in possessor position
	&lt;DP_1 head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;DP_1 head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP_1 head type suffix copular&gt; = -
	&lt;V head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;DP_1 head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;CP head type comma&gt;
	&lt;VP head type comma&gt; &lt;= &lt;IP head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;CP head type suffix&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;IP head type suffix&gt;
	&lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP head fronted&gt; == ~[cat:DP]
	&lt;VP option&gt; = 8eo
</xsl:text>
</xsl:if>

















	<xsl:if test="normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//np/@case)='ergative' and normalize-space(//neg/@subjVerbRequired)='yes' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//np/@case)='split' and normalize-space(//neg/@subjVerbRequired)='yes'">
<xsl:text>
rule {VP option 8eoNegSubjVerbRequired - VSO object with sentential complement, ergative}
VP = V DP DP_1 {CP / IP}
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head subject&gt; = &lt;DP&gt;
	&lt;V head object&gt; = &lt;DP_1&gt;
	&lt;V embedded&gt; = &lt;CP&gt;
	&lt;V embedded&gt; = &lt;IP&gt;
	&lt;CP head type root&gt; = -
	&lt;CP head type relative&gt; = -
	&lt;IP head type relative&gt; = -
	&lt;IP head fronted&gt; = none
	&lt;IP head type comp&gt; = -
	&lt;IP head type prefix comp&gt; = - | uses CP
	&lt;IP head type suffix comp&gt; = -
	&lt;IP head type root&gt; = -
	&lt;IP head type question&gt; = -
	&lt;V head type sentential&gt; = +
	&lt;V head type motion&gt; = -
	&lt;VP head type pro-drop&gt; = -
	&lt;DP head case&gt; = ergative     | assume like transitive
	&lt;DP_1 head case&gt; = absolutive
	&lt;DP head type possessive&gt; = -  		|subject not possessive
	&lt;DP head type reflexive&gt; = -		|subject not reflexive
	&lt;DP head type reciprocal&gt; = -		|subject not reciprocal
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP_1 head type suffix poss&gt; = -         | only in possessor position
	&lt;DP_1 head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;DP_1 head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP_1 head type suffix copular&gt; = -
	&lt;V head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;DP_1 head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;CP head type comma&gt;
	&lt;VP head type comma&gt; &lt;= &lt;IP head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;CP head type suffix&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;IP head type suffix&gt;
	&lt;VP head&gt; == [subject:[head:[type:[negative:+]]]] -&gt;  | if subject negative, VP must be
                     [type:[negative:+]]
                     &lt;VP head fronted&gt; == ~[cat:FocusP]
                     &lt;VP head fronted&gt; == ~[cat:DP]
                     &lt;VP option&gt; = 8eoNegSubjVerbRequired
</xsl:text>
</xsl:if>













	<xsl:if test="normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//np/@case)='ergative' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)!='no' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//np/@case)='split' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)!='no'">
<xsl:text>
rule {VP option 8eoNegObjVerbRequired - VSO object with sentential complement, ergative}
VP = V DP DP_1 {CP / IP}
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head subject&gt; = &lt;DP&gt;
	&lt;V head object&gt; = &lt;DP_1&gt;
	&lt;V embedded&gt; = &lt;CP&gt;
	&lt;V embedded&gt; = &lt;IP&gt;
	&lt;CP head type root&gt; = -
	&lt;CP head type relative&gt; = -
	&lt;IP head type relative&gt; = -
	&lt;IP head fronted&gt; = none
	&lt;IP head type comp&gt; = -
	&lt;IP head type prefix comp&gt; = - | uses CP
	&lt;IP head type suffix comp&gt; = -
	&lt;IP head type root&gt; = -
	&lt;IP head type question&gt; = -
	&lt;V head type sentential&gt; = +
	&lt;V head type motion&gt; = -
	&lt;VP head type pro-drop&gt; = -
	&lt;DP head case&gt; = ergative     | assume like transitive
	&lt;DP_1 head case&gt; = absolutive
	&lt;DP head type possessive&gt; = -  		|subject not possessive
	&lt;DP head type reflexive&gt; = -		|subject not reflexive
	&lt;DP head type reciprocal&gt; = -		|subject not reciprocal
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP_1 head type suffix poss&gt; = -         | only in possessor position
	&lt;DP_1 head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;DP_1 head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP_1 head type suffix copular&gt; = -
	&lt;V head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;DP_1 head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;CP head type comma&gt;
	&lt;VP head type comma&gt; &lt;= &lt;IP head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;CP head type suffix&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;IP head type suffix&gt;
	&lt;VP head&gt; == [object:[head:[type:[negative:+]]]] -&gt;  | if object negative, VP must be
                     [type:[negative:+]]
                     &lt;VP head fronted&gt; == ~[cat:FocusP]
                     &lt;VP head fronted&gt; == ~[cat:DP]
                     &lt;VP option&gt; = 8eoNegObjVerbRequired
</xsl:text>
</xsl:if>

















	<xsl:if test="normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//np/@case)='ergative' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//neg/@objVerbRequired)!='no' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//np/@case)='split' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//neg/@objVerbRequired)!='no'">
<xsl:text>
rule {VP option 8eoNegSubjorObjVerbRequired - VSO object with sentential complement, ergative}
VP = V DP DP_1 {CP / IP}
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head subject&gt; = &lt;DP&gt;
	&lt;V head object&gt; = &lt;DP_1&gt;
	&lt;V embedded&gt; = &lt;CP&gt;
	&lt;V embedded&gt; = &lt;IP&gt;
	&lt;CP head type root&gt; = -
	&lt;CP head type relative&gt; = -
	&lt;IP head type relative&gt; = -
	&lt;IP head fronted&gt; = none
	&lt;IP head type comp&gt; = -
	&lt;IP head type prefix comp&gt; = - | uses CP
	&lt;IP head type suffix comp&gt; = -
	&lt;IP head type root&gt; = -
	&lt;IP head type question&gt; = -
	&lt;V head type sentential&gt; = +
	&lt;V head type motion&gt; = -
	&lt;VP head type pro-drop&gt; = -
	&lt;DP head case&gt; = ergative     | assume like transitive
	&lt;DP_1 head case&gt; = absolutive
	&lt;DP head type possessive&gt; = -  		|subject not possessive
	&lt;DP head type reflexive&gt; = -		|subject not reflexive
	&lt;DP head type reciprocal&gt; = -		|subject not reciprocal
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP_1 head type suffix poss&gt; = -         | only in possessor position
	&lt;DP_1 head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;DP_1 head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP_1 head type suffix copular&gt; = -
	&lt;V head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;DP_1 head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;CP head type comma&gt;
	&lt;VP head type comma&gt; &lt;= &lt;IP head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;CP head type suffix&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;IP head type suffix&gt;
	&lt;VP head&gt; == [subject:[head:[type:[negative:+]]]] -&gt;  | if subject negative, VP must be
                     [type:[negative:+]]
	&lt;VP head&gt; == [object:[head:[type:[negative:+]]]] -&gt;  | if object negative, VP must be
                     [type:[negative:+]]
                     &lt;VP head fronted&gt; == ~[cat:FocusP]
                     &lt;VP head fronted&gt; == ~[cat:DP]
                     &lt;VP option&gt; = 8eoNegSubjorObjVerbRequired
</xsl:text>
</xsl:if>

















	<xsl:if test="normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//ip/@proDrop)!='no' and normalize-space(//np/@case)='ergative' and normalize-space(//neg/@objVerbRequired)='no' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//ip/@proDrop)!='no' and normalize-space(//np/@case)='split' and normalize-space(//neg/@objVerbRequired)='no'">
<xsl:text>
rule {VP option 8eio - VSO object with sentential complement, imperative, ergative}
VP = V DP_1 {CP / IP}
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;VP head infl mood imperative&gt; = +
	&lt;V head object&gt; = &lt;DP_1&gt;
	&lt;V embedded&gt; = &lt;CP&gt;
	&lt;V embedded&gt; = &lt;IP&gt;
	&lt;CP head type root&gt; = -
	&lt;CP head type relative&gt; = -
	&lt;IP head type relative&gt; = -
	&lt;IP head fronted&gt; = none
	&lt;IP head type comp&gt; = -
	&lt;IP head type prefix comp&gt; = - | uses CP
	&lt;IP head type suffix comp&gt; = -
	&lt;IP head type root&gt; = -
	&lt;IP head type question&gt; = -
	&lt;V head type sentential&gt; = +
	&lt;V head type motion&gt; = -
	&lt;DP_1 head case&gt; = absolutive
	&lt;DP_1 head type suffix poss&gt; = -         | only in possessor position
	&lt;DP_1 head type prefix poss&gt; = -
	&lt;DP_1 head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP_1 head type suffix copular&gt; = -
	&lt;VP head type question&gt; = -
	&lt;V head type comma&gt; = -
	&lt;DP_1 head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;CP head type comma&gt;
	&lt;VP head type comma&gt; &lt;= &lt;IP head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;CP head type suffix&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;IP head type suffix&gt;
	 &lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP option&gt; = 8eio
</xsl:text>
</xsl:if>

















	<xsl:if test="normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//ip/@proDrop)!='no' and normalize-space(//np/@case)='ergative' and normalize-space(//neg/@objVerbRequired)!='no' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//ip/@proDrop)!='no' and normalize-space(//np/@case)='split' and normalize-space(//neg/@objVerbRequired)!='no'">
<xsl:text>
rule {VP option 8eioNegObjVerbRequired - VSO object with sentential complement, imperative, ergative}
VP = V DP_1 {CP / IP}
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;VP head infl mood imperative&gt; = +
	&lt;V head object&gt; = &lt;DP_1&gt;
	&lt;V embedded&gt; = &lt;CP&gt;
	&lt;V embedded&gt; = &lt;IP&gt;
	&lt;CP head type root&gt; = -
	&lt;CP head type relative&gt; = -
	&lt;IP head type relative&gt; = -
	&lt;IP head fronted&gt; = none
	&lt;IP head type comp&gt; = -
	&lt;IP head type prefix comp&gt; = - | uses CP
	&lt;IP head type suffix comp&gt; = -
	&lt;IP head type root&gt; = -
	&lt;IP head type question&gt; = -
	&lt;V head type sentential&gt; = +
	&lt;V head type motion&gt; = -
	&lt;DP_1 head case&gt; = absolutive
	&lt;DP_1 head type suffix poss&gt; = -         | only in possessor position
	&lt;DP_1 head type prefix poss&gt; = -
	&lt;DP_1 head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP_1 head type suffix copular&gt; = -
	&lt;VP head type question&gt; = -
	&lt;V head type comma&gt; = -
	&lt;DP_1 head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;CP head type comma&gt;
	&lt;VP head type comma&gt; &lt;= &lt;IP head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;CP head type suffix&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;IP head type suffix&gt;
	&lt;VP head&gt; == [object:[head:[type:[negative:+]]]] -&gt;  | if object negative, VP must be
                     [type:[negative:+]]
	 &lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP option&gt; = 8eioNegObjVerbRequired
</xsl:text>
</xsl:if>

















	<xsl:if test="normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//ip/@proDrop)='yes' and normalize-space(//np/@case)='ergative' and normalize-space(//neg/@objVerbRequired)='no' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//ip/@proDrop)='yes' and normalize-space(//np/@case)='split' and normalize-space(//neg/@objVerbRequired)='no' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//ip/@proDrop)='yesClitic' and normalize-space(//np/@case)='ergative' and normalize-space(//neg/@objVerbRequired)='no' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//ip/@proDrop)='yesClitic' and normalize-space(//np/@case)='split' and normalize-space(//neg/@objVerbRequired)='no'">
<xsl:text>
rule {VP option 8epo - VSO object with sentential complement, pro-drop, ergative}
VP = V DP_1 {CP / IP}
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;VP head type pro-drop&gt; = +
	&lt;V head object&gt; = &lt;DP_1&gt;
	&lt;V embedded&gt; = &lt;CP&gt;
	&lt;V embedded&gt; = &lt;IP&gt;
	&lt;CP head type root&gt; = -
	&lt;CP head type relative&gt; = -
	&lt;IP head type relative&gt; = -
	&lt;IP head fronted&gt; = none
	&lt;IP head type comp&gt; = -
	&lt;IP head type prefix comp&gt; = - | uses CP
	&lt;IP head type suffix comp&gt; = -
	&lt;IP head type root&gt; = -
	&lt;IP head type question&gt; = -
	&lt;V head type sentential&gt; = +
	&lt;V head type motion&gt; = -
	&lt;DP_1 head case&gt; = absolutive
	&lt;DP_1 head type suffix poss&gt; = -         | only in possessor position
	&lt;DP_1 head type prefix poss&gt; = -
	&lt;DP_1 head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP_1 head type suffix copular&gt; = -
	&lt;V head type comma&gt; = -
	&lt;DP_1 head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;CP head type comma&gt;
	&lt;VP head type comma&gt; &lt;= &lt;IP head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;CP head type suffix&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;IP head type suffix&gt;
	&lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP head fronted&gt; == ~[cat:DP]
	&lt;VP option&gt; = 8epo
</xsl:text>
</xsl:if>

































	<xsl:if test="normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//ip/@proDrop)='yes' and normalize-space(//np/@case)='ergative' and normalize-space(//neg/@objVerbRequired)!='no' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//ip/@proDrop)='yes' and normalize-space(//np/@case)='split' and normalize-space(//neg/@objVerbRequired)!='no' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//ip/@proDrop)='yesClitic' and normalize-space(//np/@case)='ergative' and normalize-space(//neg/@objVerbRequired)!='no' or normalize-space(//typology/@wordOrder)='VSO' and normalize-space(//ip/@proDrop)='yesClitic' and normalize-space(//np/@case)='split' and normalize-space(//neg/@objVerbRequired)!='no'">
<xsl:text>
rule {VP option 8epoNegObjVerbRequired - VSO object with sentential complement, pro-drop, ergative}
VP = V DP_1 {CP / IP}
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;VP head type pro-drop&gt; = +
	&lt;V head object&gt; = &lt;DP_1&gt;
	&lt;V embedded&gt; = &lt;CP&gt;
	&lt;V embedded&gt; = &lt;IP&gt;
	&lt;CP head type root&gt; = -
	&lt;CP head type relative&gt; = -
	&lt;IP head type relative&gt; = -
	&lt;IP head fronted&gt; = none
	&lt;IP head type comp&gt; = -
	&lt;IP head type prefix comp&gt; = - | uses CP
	&lt;IP head type suffix comp&gt; = -
	&lt;IP head type root&gt; = -
	&lt;IP head type question&gt; = -
	&lt;V head type sentential&gt; = +
	&lt;V head type motion&gt; = -
	&lt;DP_1 head case&gt; = absolutive
	&lt;DP_1 head type suffix poss&gt; = -         | only in possessor position
	&lt;DP_1 head type prefix poss&gt; = -
	&lt;DP_1 head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP_1 head type suffix copular&gt; = -
	&lt;V head type comma&gt; = -
	&lt;DP_1 head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;CP head type comma&gt;
	&lt;VP head type comma&gt; &lt;= &lt;IP head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;CP head type suffix&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;IP head type suffix&gt;
	&lt;VP head&gt; == [object:[head:[type:[negative:+]]]] -&gt;  | if object negative, VP must be
                     [type:[negative:+]]
                     &lt;VP head fronted&gt; == ~[cat:FocusP]
                     &lt;VP head fronted&gt; == ~[cat:DP]
                     &lt;VP option&gt; = 8epoNegObjVerbRequired
</xsl:text>
</xsl:if>

































	<xsl:if test="normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//np/@case)='ergative' and normalize-space(//neg/@subjVerbRequired)='no' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//np/@case)='split' and normalize-space(//neg/@subjVerbRequired)='no'">
<xsl:text>
rule {VP option 8f - OSV with sentential complement, ergative}
VP = {CP / IP} DP V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head subject&gt; = &lt;DP&gt;
	&lt;V embedded&gt; = &lt;CP&gt;
	&lt;V embedded&gt; = &lt;IP&gt;
	&lt;CP head type root&gt; = -
	&lt;CP head type relative&gt; = -
	&lt;IP head type relative&gt; = -
	&lt;IP head fronted&gt; = none
	&lt;IP head type comp&gt; = -
	&lt;IP head type prefix comp&gt; = - | uses CP
	&lt;IP head type suffix comp&gt; = -
	&lt;IP head type root&gt; = -
	&lt;IP head type question&gt; = -
	&lt;V head type sentential&gt; = +
	&lt;V head type motion&gt; = -
	&lt;VP head type pro-drop&gt; = -
	&lt;DP head case&gt; = ergative     | assume like transitive
	&lt;DP head type possessive&gt; = -  		|subject not possessive
	&lt;DP head type reflexive&gt; = -		|subject not reflexive
	&lt;DP head type reciprocal&gt; = -		|subject not reciprocal
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;CP head type comma&gt; = -
	&lt;IP head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;CP head type prefix&gt;
	&lt;VP head type prefix&gt; &lt;= &lt;IP head type prefix&gt;
	&lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP head fronted&gt; == ~[cat:DP]
	&lt;VP option&gt; = 8f
</xsl:text>
</xsl:if>













	<xsl:if test="normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//np/@case)='ergative' and normalize-space(//neg/@subjVerbRequired)='yes' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//np/@case)='split' and normalize-space(//neg/@subjVerbRequired)='yes'">
<xsl:text>
rule {VP option 8fNegSubjVerbRequired - OSV with sentential complement, ergative}
VP = {CP / IP} DP V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head subject&gt; = &lt;DP&gt;
	&lt;V embedded&gt; = &lt;CP&gt;
	&lt;V embedded&gt; = &lt;IP&gt;
	&lt;CP head type root&gt; = -
	&lt;CP head type relative&gt; = -
	&lt;IP head type relative&gt; = -
	&lt;IP head fronted&gt; = none
	&lt;IP head type comp&gt; = -
	&lt;IP head type prefix comp&gt; = - | uses CP
	&lt;IP head type suffix comp&gt; = -
	&lt;IP head type root&gt; = -
	&lt;IP head type question&gt; = -
	&lt;V head type sentential&gt; = +
	&lt;V head type motion&gt; = -
	&lt;VP head type pro-drop&gt; = -
	&lt;DP head case&gt; = ergative     | assume like transitive
	&lt;DP head type possessive&gt; = -  		|subject not possessive
	&lt;DP head type reflexive&gt; = -		|subject not reflexive
	&lt;DP head type reciprocal&gt; = -		|subject not reciprocal
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;CP head type comma&gt; = -
	&lt;IP head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;CP head type prefix&gt;
	&lt;VP head type prefix&gt; &lt;= &lt;IP head type prefix&gt;
	&lt;VP head&gt; == [subject:[head:[type:[negative:+]]]] -&gt;  | if subject negative, VP must be
                     [type:[negative:+]]
                     &lt;VP head fronted&gt; == ~[cat:FocusP]
                     &lt;VP head fronted&gt; == ~[cat:DP]
                     &lt;VP option&gt; = 8fNegSubjVerbRequired
</xsl:text>
</xsl:if>













	<xsl:if test="normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//ip/@proDrop)!='no' and normalize-space(//np/@case)='ergative' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//ip/@proDrop)!='no' and normalize-space(//np/@case)='split'">
<xsl:text>
rule {VP option 8fi - OSV with sentential complement, imperative, ergative}
VP = {CP / IP} V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;VP head infl mood imperative&gt; = +
	&lt;V embedded&gt; = &lt;CP&gt;
	&lt;V embedded&gt; = &lt;IP&gt;
	&lt;CP head type root&gt; = -
	&lt;CP head type relative&gt; = -
	&lt;IP head type relative&gt; = -
	&lt;IP head fronted&gt; = none
	&lt;IP head type comp&gt; = -
	&lt;IP head type prefix comp&gt; = - | uses CP
	&lt;IP head type suffix comp&gt; = -
	&lt;IP head type root&gt; = -
	&lt;IP head type question&gt; = -
	&lt;V head type sentential&gt; = +
	&lt;V head type motion&gt; = -
	&lt;VP head type question&gt; = -
	&lt;CP head type comma&gt; = -
	&lt;IP head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;CP head type prefix&gt;
	&lt;VP head type prefix&gt; &lt;= &lt;IP head type prefix&gt;
	 &lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP option&gt; = 8fi
</xsl:text>
</xsl:if>













	<xsl:if test="normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//ip/@proDrop)='yes' and normalize-space(//np/@case)='ergative' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//ip/@proDrop)='yes' and normalize-space(//np/@case)='split' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//ip/@proDrop)='yesClitic' and normalize-space(//np/@case)='ergative' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//ip/@proDrop)='yesClitic' and normalize-space(//np/@case)='split'">
<xsl:text>
rule {VP option 8fp - OSV with sentential complement, pro-drop, ergative}
VP = {CP / IP}  V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;VP head type pro-drop&gt; = +
	&lt;V embedded&gt; = &lt;CP&gt;
	&lt;V embedded&gt; = &lt;IP&gt;
	&lt;CP head type root&gt; = -
	&lt;CP head type relative&gt; = -
	&lt;IP head type relative&gt; = -
	&lt;IP head fronted&gt; = none
	&lt;IP head type comp&gt; = -
	&lt;IP head type prefix comp&gt; = - | uses CP
	&lt;IP head type suffix comp&gt; = -
	&lt;IP head type root&gt; = -
	&lt;IP head type question&gt; = -
	&lt;V head type sentential&gt; = +
	&lt;V head type motion&gt; = -
	&lt;CP head type comma&gt; = -
	&lt;IP head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;CP head type prefix&gt;
	&lt;VP head type prefix&gt; &lt;= &lt;IP head type prefix&gt;
	&lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP head fronted&gt; == ~[cat:DP]
	&lt;VP option&gt; = 8fp
</xsl:text>
</xsl:if>

























	<xsl:if test="normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//np/@case)='ergative' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)='no' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//np/@case)='split' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)='no'">
<xsl:text>
rule {VP option 8fo - OSV object with sentential complement, ergative}
VP = {CP / IP} DP DP_1 V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head subject&gt; = &lt;DP&gt;
	&lt;V head object&gt; = &lt;DP_1&gt;
	&lt;V embedded&gt; = &lt;CP&gt;
	&lt;V embedded&gt; = &lt;IP&gt;
	&lt;CP head type root&gt; = -
	&lt;CP head type relative&gt; = -
	&lt;IP head type relative&gt; = -
	&lt;IP head fronted&gt; = none
	&lt;IP head type comp&gt; = -
	&lt;IP head type prefix comp&gt; = - | uses CP
	&lt;IP head type suffix comp&gt; = -
	&lt;IP head type root&gt; = -
	&lt;IP head type question&gt; = -
	&lt;V head type sentential&gt; = +
	&lt;V head type motion&gt; = -
	&lt;VP head type pro-drop&gt; = -
	&lt;DP head case&gt; = ergative     | assume like transitive
	&lt;DP_1 head case&gt; = absolutive
	&lt;DP head type possessive&gt; = -  		|subject not possessive
	&lt;DP head type reflexive&gt; = -		|subject not reflexive
	&lt;DP head type reciprocal&gt; = -		|subject not reciprocal
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP_1 head type suffix poss&gt; = -         | only in possessor position
	&lt;DP_1 head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;DP_1 head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP_1 head type suffix copular&gt; = -
	&lt;CP head type comma&gt; = -
	&lt;IP head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;DP_1 head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;CP head type prefix&gt;
	&lt;VP head type prefix&gt; &lt;= &lt;IP head type prefix&gt;
	&lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP head fronted&gt; == ~[cat:DP]
	&lt;VP option&gt; = 8fo
</xsl:text>
</xsl:if>

















	<xsl:if test="normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//np/@case)='ergative' and normalize-space(//neg/@subjVerbRequired)='yes' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//np/@case)='split' and normalize-space(//neg/@subjVerbRequired)='yes'">
<xsl:text>
rule {VP option 8foNegSubjVerbRequired - OSV object with sentential complement, ergative}
VP = {CP / IP} DP DP_1 V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head subject&gt; = &lt;DP&gt;
	&lt;V head object&gt; = &lt;DP_1&gt;
	&lt;V embedded&gt; = &lt;CP&gt;
	&lt;V embedded&gt; = &lt;IP&gt;
	&lt;CP head type root&gt; = -
	&lt;CP head type relative&gt; = -
	&lt;IP head type relative&gt; = -
	&lt;IP head fronted&gt; = none
	&lt;IP head type comp&gt; = -
	&lt;IP head type prefix comp&gt; = - | uses CP
	&lt;IP head type suffix comp&gt; = -
	&lt;IP head type root&gt; = -
	&lt;IP head type question&gt; = -
	&lt;V head type sentential&gt; = +
	&lt;V head type motion&gt; = -
	&lt;VP head type pro-drop&gt; = -
	&lt;DP head case&gt; = ergative     | assume like transitive
	&lt;DP_1 head case&gt; = absolutive
	&lt;DP head type possessive&gt; = -  		|subject not possessive
	&lt;DP head type reflexive&gt; = -		|subject not reflexive
	&lt;DP head type reciprocal&gt; = -		|subject not reciprocal
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP_1 head type suffix poss&gt; = -         | only in possessor position
	&lt;DP_1 head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;DP_1 head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP_1 head type suffix copular&gt; = -
	&lt;CP head type comma&gt; = -
	&lt;IP head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;DP_1 head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;CP head type prefix&gt;
	&lt;VP head type prefix&gt; &lt;= &lt;IP head type prefix&gt;
	&lt;VP head&gt; == [subject:[head:[type:[negative:+]]]] -&gt;  | if subject negative, VP must be
                     [type:[negative:+]]
                     &lt;VP head fronted&gt; == ~[cat:FocusP]
                     &lt;VP head fronted&gt; == ~[cat:DP]
                     &lt;VP option&gt; = 8foNegSubjVerbRequired
</xsl:text>
</xsl:if>













	<xsl:if test="normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//np/@case)='ergative' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)!='no' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//np/@case)='split' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)!='no'">
<xsl:text>
rule {VP option 8foNegObjVerbRequired - OSV object with sentential complement, ergative}
VP = {CP / IP} DP DP_1 V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head subject&gt; = &lt;DP&gt;
	&lt;V head object&gt; = &lt;DP_1&gt;
	&lt;V embedded&gt; = &lt;CP&gt;
	&lt;V embedded&gt; = &lt;IP&gt;
	&lt;CP head type root&gt; = -
	&lt;CP head type relative&gt; = -
	&lt;IP head type relative&gt; = -
	&lt;IP head fronted&gt; = none
	&lt;IP head type comp&gt; = -
	&lt;IP head type prefix comp&gt; = - | uses CP
	&lt;IP head type suffix comp&gt; = -
	&lt;IP head type root&gt; = -
	&lt;IP head type question&gt; = -
	&lt;V head type sentential&gt; = +
	&lt;V head type motion&gt; = -
	&lt;VP head type pro-drop&gt; = -
	&lt;DP head case&gt; = ergative     | assume like transitive
	&lt;DP_1 head case&gt; = absolutive
	&lt;DP head type possessive&gt; = -  		|subject not possessive
	&lt;DP head type reflexive&gt; = -		|subject not reflexive
	&lt;DP head type reciprocal&gt; = -		|subject not reciprocal
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP_1 head type suffix poss&gt; = -         | only in possessor position
	&lt;DP_1 head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;DP_1 head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP_1 head type suffix copular&gt; = -
	&lt;CP head type comma&gt; = -
	&lt;IP head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;DP_1 head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;CP head type prefix&gt;
	&lt;VP head type prefix&gt; &lt;= &lt;IP head type prefix&gt;
	&lt;VP head&gt; == [object:[head:[type:[negative:+]]]] -&gt;  | if object negative, VP must be
                     [type:[negative:+]]
                     &lt;VP head fronted&gt; == ~[cat:FocusP]
                     &lt;VP head fronted&gt; == ~[cat:DP]
                     &lt;VP option&gt; = 8foNegObjVerbRequired
</xsl:text>
</xsl:if>

















	<xsl:if test="normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//np/@case)='ergative' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//neg/@objVerbRequired)!='no' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//np/@case)='split' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//neg/@objVerbRequired)!='no'">
<xsl:text>
rule {VP option 8foNegSubjorObjVerbRequired - OSV object with sentential complement, ergative}
VP = {CP / IP} DP DP_1 V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head subject&gt; = &lt;DP&gt;
	&lt;V head object&gt; = &lt;DP_1&gt;
	&lt;V embedded&gt; = &lt;CP&gt;
	&lt;V embedded&gt; = &lt;IP&gt;
	&lt;CP head type root&gt; = -
	&lt;CP head type relative&gt; = -
	&lt;IP head type relative&gt; = -
	&lt;IP head fronted&gt; = none
	&lt;IP head type comp&gt; = -
	&lt;IP head type prefix comp&gt; = - | uses CP
	&lt;IP head type suffix comp&gt; = -
	&lt;IP head type root&gt; = -
	&lt;IP head type question&gt; = -
	&lt;V head type sentential&gt; = +
	&lt;V head type motion&gt; = -
	&lt;VP head type pro-drop&gt; = -
	&lt;DP head case&gt; = ergative     | assume like transitive
	&lt;DP_1 head case&gt; = absolutive
	&lt;DP head type possessive&gt; = -  		|subject not possessive
	&lt;DP head type reflexive&gt; = -		|subject not reflexive
	&lt;DP head type reciprocal&gt; = -		|subject not reciprocal
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP_1 head type suffix poss&gt; = -         | only in possessor position
	&lt;DP_1 head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;DP_1 head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP_1 head type suffix copular&gt; = -
	&lt;CP head type comma&gt; = -
	&lt;IP head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;DP_1 head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;CP head type prefix&gt;
	&lt;VP head type prefix&gt; &lt;= &lt;IP head type prefix&gt;
	&lt;VP head&gt; == [subject:[head:[type:[negative:+]]]] -&gt;  | if subject negative, VP must be
                     [type:[negative:+]]
	&lt;VP head&gt; == [object:[head:[type:[negative:+]]]] -&gt;  | if object negative, VP must be
                     [type:[negative:+]]
                     &lt;VP head fronted&gt; == ~[cat:FocusP]
                     &lt;VP head fronted&gt; == ~[cat:DP]
                     &lt;VP option&gt; = 8foNegSubjorObjVerbRequired
</xsl:text>
</xsl:if>

















	<xsl:if test="normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//ip/@proDrop)!='no' and normalize-space(//np/@case)='ergative' and normalize-space(//neg/@objVerbRequired)='no' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//ip/@proDrop)!='no' and normalize-space(//np/@case)='split' and normalize-space(//neg/@objVerbRequired)='no'">
<xsl:text>
rule {VP option 8fio - OSV object with sentential complement, imperative, ergative}
VP = {CP / IP} DP_1 V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;VP head infl mood imperative&gt; = +
	&lt;V head object&gt; = &lt;DP_1&gt;
	&lt;V embedded&gt; = &lt;CP&gt;
	&lt;V embedded&gt; = &lt;IP&gt;
	&lt;CP head type root&gt; = -
	&lt;CP head type relative&gt; = -
	&lt;IP head type relative&gt; = -
	&lt;IP head fronted&gt; = none
	&lt;IP head type comp&gt; = -
	&lt;IP head type prefix comp&gt; = - | uses CP
	&lt;IP head type suffix comp&gt; = -
	&lt;IP head type root&gt; = -
	&lt;IP head type question&gt; = -
	&lt;V head type sentential&gt; = +
	&lt;V head type motion&gt; = -
	&lt;DP_1 head case&gt; = absolutive
	&lt;DP_1 head type suffix poss&gt; = -         | only in possessor position
	&lt;DP_1 head type prefix poss&gt; = -
	&lt;DP_1 head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP_1 head type suffix copular&gt; = -
	&lt;VP head type question&gt; = -
	&lt;CP head type comma&gt; = -
	&lt;IP head type comma&gt; = -
	&lt;DP_1 head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;CP head type prefix&gt;
	&lt;VP head type prefix&gt; &lt;= &lt;IP head type prefix&gt;
	 &lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP option&gt; = 8fio
</xsl:text>
</xsl:if>

















	<xsl:if test="normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//ip/@proDrop)!='no' and normalize-space(//np/@case)='ergative' and normalize-space(//neg/@objVerbRequired)!='no' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//ip/@proDrop)!='no' and normalize-space(//np/@case)='split' and normalize-space(//neg/@objVerbRequired)!='no'">
<xsl:text>
rule {VP option 8fioNegObjVerbRequired - OSV object with sentential complement, imperative, ergative}
VP = {CP / IP} DP_1 V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;VP head infl mood imperative&gt; = +
	&lt;V head object&gt; = &lt;DP_1&gt;
	&lt;V embedded&gt; = &lt;CP&gt;
	&lt;V embedded&gt; = &lt;IP&gt;
	&lt;CP head type root&gt; = -
	&lt;CP head type relative&gt; = -
	&lt;IP head type relative&gt; = -
	&lt;IP head fronted&gt; = none
	&lt;IP head type comp&gt; = -
	&lt;IP head type prefix comp&gt; = - | uses CP
	&lt;IP head type suffix comp&gt; = -
	&lt;IP head type root&gt; = -
	&lt;IP head type question&gt; = -
	&lt;V head type sentential&gt; = +
	&lt;V head type motion&gt; = -
	&lt;DP_1 head case&gt; = absolutive
	&lt;DP_1 head type suffix poss&gt; = -         | only in possessor position
	&lt;DP_1 head type prefix poss&gt; = -
	&lt;DP_1 head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP_1 head type suffix copular&gt; = -
	&lt;VP head type question&gt; = -
	&lt;CP head type comma&gt; = -
	&lt;IP head type comma&gt; = -
	&lt;DP_1 head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;CP head type prefix&gt;
	&lt;VP head type prefix&gt; &lt;= &lt;IP head type prefix&gt;
	&lt;VP head&gt; == [object:[head:[type:[negative:+]]]] -&gt;  | if object negative, VP must be
                     [type:[negative:+]]
	 &lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP option&gt; = 8fioNegObjVerbRequired
</xsl:text>
</xsl:if>

















	<xsl:if test="normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//ip/@proDrop)='yes' and normalize-space(//np/@case)='ergative' and normalize-space(//neg/@objVerbRequired)='no' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//ip/@proDrop)='yes' and normalize-space(//np/@case)='split' and normalize-space(//neg/@objVerbRequired)='no' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//ip/@proDrop)='yesClitic' and normalize-space(//np/@case)='ergative' and normalize-space(//neg/@objVerbRequired)='no' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//ip/@proDrop)='yesClitic' and normalize-space(//np/@case)='split' and normalize-space(//neg/@objVerbRequired)='no'">
<xsl:text>
rule {VP option 8fpo - OSV object with sentential complement, pro-drop, ergative}
VP = {CP / IP} DP_1 V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;VP head type pro-drop&gt; = +
	&lt;V head object&gt; = &lt;DP_1&gt;
	&lt;V embedded&gt; = &lt;CP&gt;
	&lt;V embedded&gt; = &lt;IP&gt;
	&lt;CP head type root&gt; = -
	&lt;CP head type relative&gt; = -
	&lt;IP head type relative&gt; = -
	&lt;IP head fronted&gt; = none
	&lt;IP head type comp&gt; = -
	&lt;IP head type prefix comp&gt; = - | uses CP
	&lt;IP head type suffix comp&gt; = -
	&lt;IP head type root&gt; = -
	&lt;IP head type question&gt; = -
	&lt;V head type sentential&gt; = +
	&lt;V head type motion&gt; = -
	&lt;DP_1 head case&gt; = absolutive
	&lt;DP_1 head type suffix poss&gt; = -         | only in possessor position
	&lt;DP_1 head type prefix poss&gt; = -
	&lt;DP_1 head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP_1 head type suffix copular&gt; = -
	&lt;CP head type comma&gt; = -
	&lt;IP head type comma&gt; = -
	&lt;DP_1 head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;CP head type prefix&gt;
	&lt;VP head type prefix&gt; &lt;= &lt;IP head type prefix&gt;
	&lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP head fronted&gt; == ~[cat:DP]
	&lt;VP option&gt; = 8fpo
</xsl:text>
</xsl:if>

































	<xsl:if test="normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//ip/@proDrop)='yes' and normalize-space(//np/@case)='ergative' and normalize-space(//neg/@objVerbRequired)!='no' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//ip/@proDrop)='yes' and normalize-space(//np/@case)='split' and normalize-space(//neg/@objVerbRequired)!='no' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//ip/@proDrop)='yesClitic' and normalize-space(//np/@case)='ergative' and normalize-space(//neg/@objVerbRequired)!='no' or normalize-space(//typology/@wordOrder)='OSV' and normalize-space(//ip/@proDrop)='yesClitic' and normalize-space(//np/@case)='split' and normalize-space(//neg/@objVerbRequired)!='no'">
<xsl:text>
rule {VP option 8fpoNegObjVerbRequired - OSV object with sentential complement, pro-drop, ergative}
VP = {CP / IP} DP_1 V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;VP head type pro-drop&gt; = +
	&lt;V head object&gt; = &lt;DP_1&gt;
	&lt;V embedded&gt; = &lt;CP&gt;
	&lt;V embedded&gt; = &lt;IP&gt;
	&lt;CP head type root&gt; = -
	&lt;CP head type relative&gt; = -
	&lt;IP head type relative&gt; = -
	&lt;IP head fronted&gt; = none
	&lt;IP head type comp&gt; = -
	&lt;IP head type prefix comp&gt; = - | uses CP
	&lt;IP head type suffix comp&gt; = -
	&lt;IP head type root&gt; = -
	&lt;IP head type question&gt; = -
	&lt;V head type sentential&gt; = +
	&lt;V head type motion&gt; = -
	&lt;DP_1 head case&gt; = absolutive
	&lt;DP_1 head type suffix poss&gt; = -         | only in possessor position
	&lt;DP_1 head type prefix poss&gt; = -
	&lt;DP_1 head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP_1 head type suffix copular&gt; = -
	&lt;CP head type comma&gt; = -
	&lt;IP head type comma&gt; = -
	&lt;DP_1 head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;CP head type prefix&gt;
	&lt;VP head type prefix&gt; &lt;= &lt;IP head type prefix&gt;
	&lt;VP head&gt; == [object:[head:[type:[negative:+]]]] -&gt;  | if object negative, VP must be
                     [type:[negative:+]]
                     &lt;VP head fronted&gt; == ~[cat:FocusP]
                     &lt;VP head fronted&gt; == ~[cat:DP]
                     &lt;VP option&gt; = 8fpoNegObjVerbRequired
</xsl:text>
</xsl:if>

































	<xsl:if test="normalize-space(//typology/@wordOrder)!='VSO' and normalize-space(//typology/@wordOrder)!='OSV' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAux)='no'">
<xsl:text>
rule {VP option 9a - V initial/final, passive, no Agent phrase, no passive aux}
VP = V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head type passive&gt; = +
	 &lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP option&gt; = 9a
</xsl:text>
</xsl:if>









	<xsl:if test="normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAux)='no' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAux)='no' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' or normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAux)='no' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAux)='no' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no'">
<xsl:text>
rule {VP option 9b - V initial, passive, no Agent but PP ditrans, no passive aux}
VP = V PP
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
	&lt;V head type passive&gt; = +
	&lt;PP head type passive&gt; = -
	&lt;PP head type sentential&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;V head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;PP head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;PP head type suffix&gt;
	 &lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP option&gt; = 9b
</xsl:text>
</xsl:if>









































	<xsl:if test="normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAux)='no' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAux)='no' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' or normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAux)='no' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAux)='no' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no'">
<xsl:text>
rule {VP option 9bNegObjVerbRequired - V initial, passive, no Agent but PP ditrans, no passive aux}
VP = V PP
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
	&lt;V head type passive&gt; = +
	&lt;PP head type passive&gt; = -
	&lt;PP head type sentential&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;V head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;PP head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;PP head type suffix&gt;
	&lt;VP head&gt; == [indirectobject:[head:[type:[negative:+]]]] -&gt;  | if indirectobject negative, VP must be
                     [type:[negative:+]]
	 &lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP option&gt; = 9bNegObjVerbRequired
</xsl:text>
</xsl:if>









































	<xsl:if test="normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAux)='no' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAux)='no' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' or normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAux)='no' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAux)='no' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no'">
<xsl:text>
rule {VP option 9c - V final, passive, no Agent but PP ditrans, no passive aux}
VP = PP V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
	&lt;V head type passive&gt; = +
	&lt;PP head type passive&gt; = -
	&lt;PP head type sentential&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;PP head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;PP head type prefix&gt;
	 &lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP option&gt; = 9c
</xsl:text>
</xsl:if>









































	<xsl:if test="normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAux)='no' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAux)='no' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' or normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAux)='no' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAux)='no' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no'">
<xsl:text>
rule {VP option 9cNegObjVerbRequired - V final, passive, no Agent but PP ditrans, no passive aux}
VP = PP V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
	&lt;V head type passive&gt; = +
	&lt;PP head type passive&gt; = -
	&lt;PP head type sentential&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;PP head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;PP head type prefix&gt;
	&lt;VP head&gt; == [indirectobject:[head:[type:[negative:+]]]] -&gt;  | if indirectobject negative, VP must be
                     [type:[negative:+]]
	 &lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP option&gt; = 9cNegObjVerbRequired
</xsl:text>
</xsl:if>









































	<xsl:if test="normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAux)='no' and normalize-space(//ip/@diCat)='pp' and normalize-space(//q/@contFront)='after' and normalize-space(//neg/@objVerbRequired)='no' or normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAux)='no' and normalize-space(//ip/@diCat)='both' and normalize-space(//q/@contFront)='after' and normalize-space(//neg/@objVerbRequired)='no'">
<xsl:text>
rule {VP option 9cQSubj - V final, passive, no Agent but PP ditrans, no passive aux, subject questioned}
VP = PP DP V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head subject&gt; = &lt;DP&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
	&lt;V head type passive&gt; = +
	&lt;VP head type question&gt; = +
	&lt;VP head type pro-drop&gt; = -
	&lt;DP head type wh&gt; = +
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;PP head type passive&gt; = -
	&lt;PP head type sentential&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;PP head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;PP head type prefix&gt;
	&lt;VP option&gt; = 9cQSubj
</xsl:text>
</xsl:if>

























	<xsl:if test="normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAux)='no' and normalize-space(//ip/@diCat)='pp' and normalize-space(//q/@contFront)='after' and normalize-space(//neg/@objVerbRequired)!='no' or normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAux)='no' and normalize-space(//ip/@diCat)='both' and normalize-space(//q/@contFront)='after' and normalize-space(//neg/@objVerbRequired)!='no'">
<xsl:text>
rule {VP option 9cQSubjNegObjVerbRequired - V final, passive, no Agent but PP ditrans, no passive aux, subject questioned}
VP = PP DP V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head subject&gt; = &lt;DP&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
	&lt;V head type passive&gt; = +
	&lt;VP head type question&gt; = +
	&lt;VP head type pro-drop&gt; = -
	&lt;DP head type wh&gt; = +
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;PP head type passive&gt; = -
	&lt;PP head type sentential&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;PP head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;PP head type prefix&gt;
	&lt;VP head&gt; == [indirectobject:[head:[type:[negative:+]]]] -&gt;  | if indirectobject negative, VP must be
                     [type:[negative:+]]
	&lt;VP option&gt; = 9cQSubjNegObjVerbRequired
</xsl:text>
</xsl:if>

























	<xsl:if test="normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAux)='no' and normalize-space(//ip/@diCat)='dp' and normalize-space(//q/@contFront)='after' and normalize-space(//neg/@objVerbRequired)='no' or normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAux)='no' and normalize-space(//ip/@diCat)='both' and normalize-space(//q/@contFront)='after' and normalize-space(//neg/@objVerbRequired)='no'">
<xsl:text>
rule {VP option 9cQSubjDP - V final, passive, no Agent but DP ditrans, no passive aux, subject questioned}
VP = DP_1 DP V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head subject&gt; = &lt;DP&gt;
	&lt;V head indirectobject&gt; = &lt;DP_1&gt;
	&lt;V head type passive&gt; = +
	&lt;VP head type question&gt; = +
	&lt;VP head type pro-drop&gt; = -
	&lt;DP head type wh&gt; = +
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;PP head type passive&gt; = -
	&lt;PP head type sentential&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;DP_1 head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;DP_1 head type prefix&gt;
	&lt;VP option&gt; = 9cQSubjDP
</xsl:text>
</xsl:if>

























	<xsl:if test="normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAux)='no' and normalize-space(//ip/@diCat)='dp' and normalize-space(//q/@contFront)='after' and normalize-space(//neg/@objVerbRequired)!='no' or normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAux)='no' and normalize-space(//ip/@diCat)='both' and normalize-space(//q/@contFront)='after' and normalize-space(//neg/@objVerbRequired)!='no'">
<xsl:text>
rule {VP option 9cQSubjDPNegObjVerbRequired - V final, passive, no Agent but DP ditrans, no passive aux, subject questioned}
VP = DP_1 DP V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head subject&gt; = &lt;DP&gt;
	&lt;V head indirectobject&gt; = &lt;DP_1&gt;
	&lt;V head type passive&gt; = +
	&lt;VP head type question&gt; = +
	&lt;VP head type pro-drop&gt; = -
	&lt;DP head type wh&gt; = +
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;PP head type passive&gt; = -
	&lt;PP head type sentential&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;DP_1 head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;DP_1 head type prefix&gt;
	&lt;VP head&gt; == [indirectobject:[head:[type:[negative:+]]]] -&gt;  | if indirectobject negative, VP must be
                     [type:[negative:+]]
	&lt;VP option&gt; = 9cQSubjDPNegObjVerbRequired
</xsl:text>
</xsl:if>

























	<xsl:if test="normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAux)='no' and normalize-space(//ip/@diCat)='pp' and normalize-space(//q/@contFront)='after' and normalize-space(//neg/@objVerbRequired)='no' or normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAux)='no' and normalize-space(//ip/@diCat)='both' and normalize-space(//q/@contFront)='after' and normalize-space(//neg/@objVerbRequired)='no'">
<xsl:text>
rule {VP option 9cQAdvP - V final, passive, no Agent but PP ditrans, no passive aux, AdvP questioned}
VP = PP AdvP V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
	&lt;V head type passive&gt; = +
	&lt;VP head type question&gt; = +
	&lt;AdvP head type wh&gt; = +
	&lt;PP head type passive&gt; = -
	&lt;PP head type sentential&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;PP head type comma&gt; = -
	&lt;AdvP head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;PP head type prefix&gt;
	&lt;VP option&gt; = 9cQAdvP
</xsl:text>
</xsl:if>

























	<xsl:if test="normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAux)='no' and normalize-space(//ip/@diCat)='pp' and normalize-space(//q/@contFront)='after' and normalize-space(//neg/@objVerbRequired)!='no' or normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAux)='no' and normalize-space(//ip/@diCat)='both' and normalize-space(//q/@contFront)='after' and normalize-space(//neg/@objVerbRequired)!='no'">
<xsl:text>
rule {VP option 9cQAdvPNegObjVerbRequired - V final, passive, no Agent but PP ditrans, no passive aux, AdvP questioned}
VP = PP AdvP V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
	&lt;V head type passive&gt; = +
	&lt;VP head type question&gt; = +
	&lt;AdvP head type wh&gt; = +
	&lt;PP head type passive&gt; = -
	&lt;PP head type sentential&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;PP head type comma&gt; = -
	&lt;AdvP head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;PP head type prefix&gt;
	&lt;VP head&gt; == [indirectobject:[head:[type:[negative:+]]]] -&gt;  | if indirectobject negative, VP must be
                     [type:[negative:+]]
	&lt;VP option&gt; = 9cQAdvPNegObjVerbRequired
</xsl:text>
</xsl:if>

























	<xsl:if test="normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAux)='no' and normalize-space(//ip/@diCat)='dp' and normalize-space(//q/@contFront)='after' and normalize-space(//neg/@objVerbRequired)='no' or normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAux)='no' and normalize-space(//ip/@diCat)='both' and normalize-space(//q/@contFront)='after' and normalize-space(//neg/@objVerbRequired)='no'">
<xsl:text>
rule {VP option 9cQAdvPDP - V final, passive, no Agent but DP ditrans, no passive aux, AdvP questioned}
VP = DP AdvP V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head indirectobject&gt; = &lt;DP&gt;
	&lt;V head type passive&gt; = +
	&lt;VP head type question&gt; = +
	&lt;AdvP head type wh&gt; = +
	&lt;PP head type passive&gt; = -
	&lt;PP head type sentential&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;PP head type comma&gt; = -
	&lt;AdvP head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;DP head type prefix&gt;
	&lt;VP option&gt; = 9cQAdvPDP
</xsl:text>
</xsl:if>

























	<xsl:if test="normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAux)='no' and normalize-space(//ip/@diCat)='dp' and normalize-space(//q/@contFront)='after' and normalize-space(//neg/@objVerbRequired)!='no' or normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAux)='no' and normalize-space(//ip/@diCat)='both' and normalize-space(//q/@contFront)='after' and normalize-space(//neg/@objVerbRequired)!='no'">
<xsl:text>
rule {VP option 9cQAdvPDPNegObjVerbRequired - V final, passive, no Agent but DP ditrans, no passive aux, AdvP questioned}
VP = DP AdvP V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head indirectobject&gt; = &lt;DP&gt;
	&lt;V head type passive&gt; = +
	&lt;VP head type question&gt; = +
	&lt;AdvP head type wh&gt; = +
	&lt;DP head type passive&gt; = -
	&lt;DP head type sentential&gt; = -
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;AdvP head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;DP head type prefix&gt;
	&lt;VP head&gt; == [indirectobject:[head:[type:[negative:+]]]] -&gt;  | if indirectobject negative, VP must be
                     [type:[negative:+]]
	&lt;VP option&gt; = 9cQAdvPDPNegObjVerbRequired
</xsl:text>
</xsl:if>

























	<xsl:if test="normalize-space(//typology/@wordOrder)!='VSO' and normalize-space(//typology/@wordOrder)!='OSV' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAux)='yes'">
<xsl:text>
rule {VP option 9d - V initial/final, passive, no Agent phrase, passive aux}
VP = V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head type passive&gt; = +
	&lt;VP head type auxiliary&gt; = +
	 &lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP option&gt; = 9d
</xsl:text>
</xsl:if>









	<xsl:if test="normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAux)='yes' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAux)='yes' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' or normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAux)='yes' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAux)='yes' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no'">
<xsl:text>
rule {VP option 9e - V initial, passive, no Agent but PP ditrans, passive aux}
VP = V PP
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
	&lt;V head type passive&gt; = +
	&lt;PP head type passive&gt; = -
	&lt;PP head type sentential&gt; = -
	&lt;VP head type auxiliary&gt; = +
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;V head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;PP head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;PP head type suffix&gt;
	 &lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP option&gt; = 9e
</xsl:text>
</xsl:if>









































	<xsl:if test="normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAux)='yes' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAux)='yes' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' or normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAux)='yes' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAux)='yes' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no'">
<xsl:text>
rule {VP option 9eNegObjVerbRequired - V initial, passive, no Agent but PP ditrans, passive aux}
VP = V PP
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
	&lt;V head type passive&gt; = +
	&lt;PP head type passive&gt; = -
	&lt;PP head type sentential&gt; = -
	&lt;VP head type auxiliary&gt; = +
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;V head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;PP head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;PP head type suffix&gt;
	&lt;VP head&gt; == [indirectobject:[head:[type:[negative:+]]]] -&gt;  | if indirectobject negative, VP must be
                     [type:[negative:+]]
	 &lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP option&gt; = 9eNegObjVerbRequired
</xsl:text>
</xsl:if>









































	<xsl:if test="normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAux)='yes' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAux)='yes' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)='no' or normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAux)='yes' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAux)='yes' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)='no'">
<xsl:text>
rule {VP option 9f - V final, passive, no Agent but PP ditrans, passive aux}
VP = PP V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
	&lt;V head type passive&gt; = +
	&lt;PP head type passive&gt; = -
	&lt;PP head type sentential&gt; = -
	&lt;VP head type auxiliary&gt; = +
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;PP head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;PP head type prefix&gt;
	 &lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP option&gt; = 9f
</xsl:text>
</xsl:if>









































	<xsl:if test="normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAux)='yes' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAux)='yes' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@objVerbRequired)!='no' or normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAux)='yes' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAux)='yes' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@objVerbRequired)!='no'">
<xsl:text>
rule {VP option 9fNegObjVerbRequired - V final, passive, no Agent but PP ditrans, passive aux}
VP = PP V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
	&lt;V head type passive&gt; = +
	&lt;PP head type passive&gt; = -
	&lt;PP head type sentential&gt; = -
	&lt;VP head type auxiliary&gt; = +
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;PP head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;PP head type prefix&gt;
	&lt;VP head&gt; == [indirectobject:[head:[type:[negative:+]]]] -&gt;  | if indirectobject negative, VP must be
                     [type:[negative:+]]
	 &lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP option&gt; = 9fNegObjVerbRequired
</xsl:text>
</xsl:if>









































	<xsl:if test="normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAux)='yes' and normalize-space(//ip/@diCat)='pp' and normalize-space(//q/@contFront)='after' and normalize-space(//neg/@objVerbRequired)='no' or normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAux)='yes' and normalize-space(//ip/@diCat)='both' and normalize-space(//q/@contFront)='after' and normalize-space(//neg/@objVerbRequired)='no'">
<xsl:text>
rule {VP option 9fQSubj - V final, passive, no Agent but PP ditrans, passive aux, subject questioned}
VP = PP DP V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head subject&gt; = &lt;DP&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
	&lt;V head type passive&gt; = +
	&lt;VP head type auxiliary&gt; = +
	&lt;VP head type question&gt; = +
	&lt;VP head type pro-drop&gt; = -
	&lt;DP head type wh&gt; = +
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;PP head type passive&gt; = -
	&lt;PP head type sentential&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;PP head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;PP head type prefix&gt;
	&lt;VP option&gt; = 9fQSubj
</xsl:text>
</xsl:if>

























	<xsl:if test="normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAux)='yes' and normalize-space(//ip/@diCat)='pp' and normalize-space(//q/@contFront)='after' and normalize-space(//neg/@objVerbRequired)!='no' or normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAux)='yes' and normalize-space(//ip/@diCat)='both' and normalize-space(//q/@contFront)='after' and normalize-space(//neg/@objVerbRequired)!='no'">
<xsl:text>
rule {VP option 9fQSubjNegObjVerbRequired - V final, passive, no Agent but PP ditrans, passive aux, subject questioned}
VP = PP DP V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head subject&gt; = &lt;DP&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
	&lt;V head type passive&gt; = +
	&lt;VP head type auxiliary&gt; = +
	&lt;VP head type question&gt; = +
	&lt;VP head type pro-drop&gt; = -
	&lt;DP head type wh&gt; = +
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;PP head type passive&gt; = -
	&lt;PP head type sentential&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;PP head type comma&gt; = -
	&lt;DP head type comma&gt;  = -
	&lt;VP head type prefix&gt; &lt;= &lt;PP head type prefix&gt;
	&lt;VP head&gt; == [indirectobject:[head:[type:[negative:+]]]] -&gt;  | if indirectobject negative, VP must be
                     [type:[negative:+]]
	&lt;VP option&gt; = 9fQSubjNegObjVerbRequired
</xsl:text>
</xsl:if>

























	<xsl:if test="normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAux)='yes' and normalize-space(//ip/@diCat)='dp' and normalize-space(//q/@contFront)='after' and normalize-space(//neg/@objVerbRequired)='no' or normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAux)='yes' and normalize-space(//ip/@diCat)='both' and normalize-space(//q/@contFront)='after' and normalize-space(//neg/@objVerbRequired)='no'">
<xsl:text>
rule {VP option 9fQSubjDP - V final, passive, no Agent but DP ditrans, passive aux, subject questioned}
VP = DP_1 DP V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head subject&gt; = &lt;DP&gt;
	&lt;V head indirectobject&gt; = &lt;DP_1&gt;
	&lt;V head type passive&gt; = +
	&lt;VP head type auxiliary&gt; = +
	&lt;VP head type question&gt; = +
	&lt;VP head type pro-drop&gt; = -
	&lt;DP head type wh&gt; = +
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;DP_1 head type suffix poss&gt; = -         | only in possessor position
	&lt;DP_1 head type prefix poss&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;DP_1 head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;DP_1 head type prefix&gt;
	&lt;VP option&gt; = 9fQSubjDP
</xsl:text>
</xsl:if>

























	<xsl:if test="normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAux)='yes' and normalize-space(//ip/@diCat)='dp' and normalize-space(//q/@contFront)='after' and normalize-space(//neg/@objVerbRequired)!='no' or normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAux)='yes' and normalize-space(//ip/@diCat)='both' and normalize-space(//q/@contFront)='after' and normalize-space(//neg/@objVerbRequired)!='no'">
<xsl:text>
rule {VP option 9fQSubjDPNegObjVerbRequired - V final, passive, no Agent but DP ditrans, passive aux, subject questioned}
VP = DP_1 DP V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head subject&gt; = &lt;DP&gt;
	&lt;V head indirectobject&gt; = &lt;DP_1&gt;
	&lt;V head type passive&gt; = +
	&lt;VP head type auxiliary&gt; = +
	&lt;VP head type question&gt; = +
	&lt;VP head type pro-drop&gt; = -
	&lt;DP head type wh&gt; = +
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;DP_1 head type suffix poss&gt; = -         | only in possessor position
	&lt;DP_1 head type prefix poss&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;DP_1 head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;DP_1 head type prefix&gt;
	&lt;VP head&gt; == [indirectobject:[head:[type:[negative:+]]]] -&gt;  | if indirectobject negative, VP must be
                     [type:[negative:+]]
	&lt;VP option&gt; = 9fQSubjDPNegObjVerbRequired
</xsl:text>
</xsl:if>

























	<xsl:if test="normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAux)='yes' and normalize-space(//ip/@diCat)='pp' and normalize-space(//q/@contFront)='after' and normalize-space(//neg/@objVerbRequired)='no' or normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAux)='yes' and normalize-space(//ip/@diCat)='both' and normalize-space(//q/@contFront)='after' and normalize-space(//neg/@objVerbRequired)='no'">
<xsl:text>
rule {VP option 9fQAdvP - V final, passive, no Agent but PP ditrans, passive aux, AdvP questioned}
VP = PP AdvP V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
	&lt;V head type passive&gt; = +
	&lt;VP head type auxiliary&gt; = +
	&lt;VP head type question&gt; = +
	&lt;AdvP head type wh&gt; = +
	&lt;PP head type passive&gt; = -
	&lt;PP head type sentential&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;PP head type comma&gt; = -
	&lt;AdvP head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;PP head type prefix&gt;
	&lt;VP option&gt; = 9fQAdvP
</xsl:text>
</xsl:if>

























	<xsl:if test="normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAux)='yes' and normalize-space(//ip/@diCat)='pp' and normalize-space(//q/@contFront)='after' and normalize-space(//neg/@objVerbRequired)!='no' or normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAux)='yes' and normalize-space(//ip/@diCat)='both' and normalize-space(//q/@contFront)='after' and normalize-space(//neg/@objVerbRequired)!='no'">
<xsl:text>
rule {VP option 9fQAdvPNegObjVerbRequired - V final, passive, no Agent but PP ditrans, passive aux, AdvP questioned}
VP = PP AdvP V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head indirectobject&gt; = &lt;PP head object&gt;
	&lt;V head type passive&gt; = +
	&lt;VP head type auxiliary&gt; = +
	&lt;VP head type question&gt; = +
	&lt;AdvP head type wh&gt; = +
	&lt;PP head type passive&gt; = -
	&lt;PP head type sentential&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;PP head type comma&gt; = -
	&lt;AdvP head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;PP head type prefix&gt;
	&lt;VP head&gt; == [indirectobject:[head:[type:[negative:+]]]] -&gt;  | if indirectobject negative, VP must be
                     [type:[negative:+]]
	&lt;VP option&gt; = 9fQAdvPNegObjVerbRequired
</xsl:text>
</xsl:if>

























	<xsl:if test="normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAux)='yes' and normalize-space(//ip/@diCat)='dp' and normalize-space(//q/@contFront)='after' and normalize-space(//neg/@objVerbRequired)='no' or normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAux)='yes' and normalize-space(//ip/@diCat)='both' and normalize-space(//q/@contFront)='after' and normalize-space(//neg/@objVerbRequired)='no'">
<xsl:text>
rule {VP option 9fQAdvPDP - V final, passive, no Agent but DP ditrans, passive aux, AdvP questioned}
VP = DP AdvP V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head indirectobject&gt; = &lt;DP&gt;
	&lt;V head type passive&gt; = +
	&lt;VP head type auxiliary&gt; = +
	&lt;VP head type question&gt; = +
	&lt;AdvP head type wh&gt; = +
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;AdvP head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;DP head type prefix&gt;
	&lt;VP option&gt; = 9fQAdvPDP
</xsl:text>
</xsl:if>

























	<xsl:if test="normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAux)='yes' and normalize-space(//ip/@diCat)='dp' and normalize-space(//q/@contFront)='after' and normalize-space(//neg/@objVerbRequired)!='no' or normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAux)='yes' and normalize-space(//ip/@diCat)='both' and normalize-space(//q/@contFront)='after' and normalize-space(//neg/@objVerbRequired)!='no'">
<xsl:text>
rule {VP option 9fQAdvPDPNegObjVerbRequired - V final, passive, no Agent but DP ditrans, passive aux, AdvP questioned}
VP = DP AdvP V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head indirectobject&gt; = &lt;DP&gt;
	&lt;V head type passive&gt; = +
	&lt;VP head type auxiliary&gt; = +
	&lt;VP head type question&gt; = +
	&lt;AdvP head type wh&gt; = +
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;AdvP head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;DP head type prefix&gt;
	&lt;VP head&gt; == [indirectobject:[head:[type:[negative:+]]]] -&gt;  | if indirectobject negative, VP must be
                     [type:[negative:+]]
	&lt;VP option&gt; = 9fQAdvPDPNegObjVerbRequired
</xsl:text>
</xsl:if>

























	<xsl:if test="normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='pp' and normalize-space(//ip/@passiveAux)='no' and normalize-space(//neg/@subjVerbRequired)='no' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='pp' and normalize-space(//ip/@passiveAux)='no' and normalize-space(//neg/@subjVerbRequired)='no'">
<xsl:text>
rule {VP option 9g - V initial, passive, with PP Agent, not ditrans, no passive Aux}
VP = V PP
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head type passive&gt; = +
	&lt;PP head type passive&gt; = +
	&lt;PP head type sentential&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;V head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;PP head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;PP head type suffix&gt;
	&lt;V head subject&gt; = &lt;PP head object&gt;
	 &lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP option&gt; = 9g
</xsl:text>
</xsl:if>

























	<xsl:if test="normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='pp' and normalize-space(//ip/@passiveAux)='no' and normalize-space(//neg/@subjVerbRequired)='yes' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='pp' and normalize-space(//ip/@passiveAux)='no' and normalize-space(//neg/@subjVerbRequired)='yes'">
<xsl:text>
rule {VP option 9gNegSubjVerbRequired - V initial, passive, with PP Agent, not ditrans, no passive Aux}
VP = V PP
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head type passive&gt; = +
	&lt;PP head type passive&gt; = +
	&lt;PP head type sentential&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;V head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;PP head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;PP head type suffix&gt;
	&lt;V head subject&gt; = &lt;PP head object&gt;
	&lt;VP head&gt; == [subject:[head:[type:[negative:+]]]] -&gt;  | if subject negative, VP must be
                     [type:[negative:+]]
	 &lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP option&gt; = 9gNegSubjVerbRequired
</xsl:text>
</xsl:if>

























	<xsl:if test="normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='pp' and normalize-space(//ip/@passiveAux)='no' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)='no' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='pp' and normalize-space(//ip/@passiveAux)='no' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)='no' or normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='pp' and normalize-space(//ip/@passiveAux)='no' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)='no' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='pp' and normalize-space(//ip/@passiveAux)='no' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)='no'">
<xsl:text>
rule {VP option 9ginit - V initial, passive, with PP Agent, PP ditrans, no passive Aux}
VP = V PP_1 PP
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head indirectobject&gt; = &lt;PP_1 head object&gt;
	&lt;V head type passive&gt; = +
	&lt;PP head type passive&gt; = +
	&lt;PP_1 head type passive&gt; = -
	&lt;PP head type sentential&gt; = -
	&lt;PP_1 head type sentential&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;PP_1 head type suffix poss&gt; = -         | only in possessor position
	&lt;PP_1 head type prefix poss&gt; = -
	&lt;V head type comma&gt; = -
	&lt;PP_1 head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;PP head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;PP head type suffix&gt;
	&lt;V head subject&gt; = &lt;PP head object&gt;
	 &lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP option&gt; = 9ginit
</xsl:text>
</xsl:if>

































































	<xsl:if test="normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='pp' and normalize-space(//ip/@passiveAux)='no' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='yes' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='pp' and normalize-space(//ip/@passiveAux)='no' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='yes' or normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='pp' and normalize-space(//ip/@passiveAux)='no' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='yes' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='pp' and normalize-space(//ip/@passiveAux)='no' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='yes'">
<xsl:text>
rule {VP option 9ginitNegSubjVerbRequired - V initial, passive, with PP Agent, PP ditrans, no passive Aux}
VP = V PP_1 PP
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head indirectobject&gt; = &lt;PP_1 head object&gt;
	&lt;V head type passive&gt; = +
	&lt;PP head type passive&gt; = +
	&lt;PP_1 head type passive&gt; = -
	&lt;PP head type sentential&gt; = -
	&lt;PP_1 head type sentential&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;PP_1 head type suffix poss&gt; = -         | only in possessor position
	&lt;PP_1 head type prefix poss&gt; = -
	&lt;V head type comma&gt; = -
	&lt;PP_1 head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;PP head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;PP head type suffix&gt;
	&lt;V head subject&gt; = &lt;PP head object&gt;
	&lt;VP head&gt; == [subject:[head:[type:[negative:+]]]] -&gt;  | if subject negative, VP must be
                     [type:[negative:+]]
	 &lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP option&gt; = 9ginitNegSubjVerbRequired
</xsl:text>
</xsl:if>

























































	<xsl:if test="normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='pp' and normalize-space(//ip/@passiveAux)='no' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)!='no' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='pp' and normalize-space(//ip/@passiveAux)='no' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)!='no' or normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='pp' and normalize-space(//ip/@passiveAux)='no' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)!='no' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='pp' and normalize-space(//ip/@passiveAux)='no' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)!='no'">
<xsl:text>
rule {VP option 9ginitNegObjVerbRequired - V initial, passive, with PP Agent, PP ditrans, no passive Aux}
VP = V PP_1 PP
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head indirectobject&gt; = &lt;PP_1 head object&gt;
	&lt;V head type passive&gt; = +
	&lt;PP head type passive&gt; = +
	&lt;PP_1 head type passive&gt; = -
	&lt;PP head type sentential&gt; = -
	&lt;PP_1 head type sentential&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;PP_1 head type suffix poss&gt; = -         | only in possessor position
	&lt;PP_1 head type prefix poss&gt; = -
	&lt;V head type comma&gt; = -
	&lt;PP_1 head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;PP head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;PP head type suffix&gt;
	&lt;V head subject&gt; = &lt;PP head object&gt;
	&lt;VP head&gt; == [indirectobject:[head:[type:[negative:+]]]] -&gt;  | if indirectobject negative, VP must be
                     [type:[negative:+]]
	 &lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP option&gt; = 9ginitNegObjVerbRequired
</xsl:text>
</xsl:if>

































































	<xsl:if test="normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='pp' and normalize-space(//ip/@passiveAux)='no' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//neg/@objVerbRequired)!='no' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='pp' and normalize-space(//ip/@passiveAux)='no' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//neg/@objVerbRequired)!='no' or normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='pp' and normalize-space(//ip/@passiveAux)='no' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//neg/@objVerbRequired)!='no' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='pp' and normalize-space(//ip/@passiveAux)='no' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//neg/@objVerbRequired)!='no'">
<xsl:text>
rule {VP option 9ginitNegSubjorObjVerbRequired - V initial, passive, with PP Agent, PP ditrans, no passive Aux}
VP = V PP_1 PP
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head indirectobject&gt; = &lt;PP_1 head object&gt;
	&lt;V head type passive&gt; = +
	&lt;PP head type passive&gt; = +
	&lt;PP_1 head type passive&gt; = -
	&lt;PP head type sentential&gt; = -
	&lt;PP_1 head type sentential&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;PP_1 head type suffix poss&gt; = -         | only in possessor position
	&lt;PP_1 head type prefix poss&gt; = -
	&lt;V head type comma&gt; = -
	&lt;PP_1 head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;PP head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;PP head type suffix&gt;
	&lt;V head subject&gt; = &lt;PP head object&gt;
	&lt;VP head&gt; == [subject:[head:[type:[negative:+]]]] -&gt;  | if subject negative, VP must be
                     [type:[negative:+]]
	&lt;VP head&gt; == [indirectobject:[head:[type:[negative:+]]]] -&gt;  | if indirectobject negative, VP must be
                     [type:[negative:+]]
	 &lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP option&gt; = 9ginitNegSubjorObjVerbRequired
</xsl:text>
</xsl:if>

































































	<xsl:if test="normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='pp' and normalize-space(//ip/@passiveAux)='no' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)='no' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='pp' and normalize-space(//ip/@passiveAux)='no' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)='no' or normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='pp' and normalize-space(//ip/@passiveAux)='no' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)='no' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='pp' and normalize-space(//ip/@passiveAux)='no' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)='no'">
<xsl:text>
rule {VP option 9gfin - V initial, passive, with PP Agent, PP ditrans, no passive Aux}
VP = V PP PP_2
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head indirectobject&gt; = &lt;PP_2 head object&gt;
	&lt;V head type passive&gt; = +
	&lt;PP head type passive&gt; = +
	&lt;PP_2 head type passive&gt; = -
	&lt;PP head type sentential&gt; = -
	&lt;PP_2 head type sentential&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;PP_2 head type suffix poss&gt; = -         | only in possessor position
	&lt;PP_2 head type prefix poss&gt; = -
	&lt;V head type comma&gt; = -
	&lt;PP head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;PP_2 head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;PP_2 head type suffix&gt;
	&lt;V head subject&gt; = &lt;PP head object&gt;
	 &lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP option&gt; = 9gfin
</xsl:text>
</xsl:if>

































































	<xsl:if test="normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='pp' and normalize-space(//ip/@passiveAux)='no' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='yes' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='pp' and normalize-space(//ip/@passiveAux)='no' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='yes' or normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='pp' and normalize-space(//ip/@passiveAux)='no' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='yes' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='pp' and normalize-space(//ip/@passiveAux)='no' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='yes'">
<xsl:text>
rule {VP option 9gfinNegSubjVerbRequired - V initial, passive, with PP Agent, PP ditrans, no passive Aux}
VP = V PP PP_2
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head indirectobject&gt; = &lt;PP_2 head object&gt;
	&lt;V head type passive&gt; = +
	&lt;PP head type passive&gt; = +
	&lt;PP_2 head type passive&gt; = -
	&lt;PP head type sentential&gt; = -
	&lt;PP_2 head type sentential&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;PP_2 head type suffix poss&gt; = -         | only in possessor position
	&lt;PP_2 head type prefix poss&gt; = -
	&lt;V head type comma&gt; = -
	&lt;PP head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;PP_2 head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;PP_2 head type suffix&gt;
	&lt;V head subject&gt; = &lt;PP head object&gt;
	&lt;VP head&gt; == [subject:[head:[type:[negative:+]]]] -&gt;  | if subject negative, VP must be
                     [type:[negative:+]]
	 &lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP option&gt; = 9gfinNegSubjVerbRequired
</xsl:text>
</xsl:if>

























































	<xsl:if test="normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='pp' and normalize-space(//ip/@passiveAux)='no' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)!='no' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='pp' and normalize-space(//ip/@passiveAux)='no' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)!='no' or normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='pp' and normalize-space(//ip/@passiveAux)='no' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)!='no' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='pp' and normalize-space(//ip/@passiveAux)='no' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)!='no'">
<xsl:text>
rule {VP option 9gfinNegObjVerbRequired - V initial, passive, with PP Agent, PP ditrans, no passive Aux}
VP = V PP PP_2
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head indirectobject&gt; = &lt;PP_2 head object&gt;
	&lt;V head type passive&gt; = +
	&lt;PP head type passive&gt; = +
	&lt;PP_2 head type passive&gt; = -
	&lt;PP head type sentential&gt; = -
	&lt;PP_2 head type sentential&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;PP_2 head type suffix poss&gt; = -         | only in possessor position
	&lt;PP_2 head type prefix poss&gt; = -
	&lt;V head type comma&gt; = -
	&lt;PP head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;PP_2 head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;PP_2 head type suffix&gt;
	&lt;V head subject&gt; = &lt;PP head object&gt;
	&lt;VP head&gt; == [indirectobject:[head:[type:[negative:+]]]] -&gt;  | if indirectobject negative, VP must be
                     [type:[negative:+]]
	 &lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP option&gt; = 9gfinNegObjVerbRequired
</xsl:text>
</xsl:if>

































































	<xsl:if test="normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='pp' and normalize-space(//ip/@passiveAux)='no' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//neg/@objVerbRequired)!='no' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='pp' and normalize-space(//ip/@passiveAux)='no' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//neg/@objVerbRequired)!='no' or normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='pp' and normalize-space(//ip/@passiveAux)='no' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//neg/@objVerbRequired)!='no' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='pp' and normalize-space(//ip/@passiveAux)='no' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//neg/@objVerbRequired)!='no'">
<xsl:text>
rule {VP option 9gfinNegSubjorObjVerbRequired - V initial, passive, with PP Agent, PP ditrans, no passive Aux}
VP = V PP PP_2
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head indirectobject&gt; = &lt;PP_2 head object&gt;
	&lt;V head type passive&gt; = +
	&lt;PP head type passive&gt; = +
	&lt;PP_2 head type passive&gt; = -
	&lt;PP head type sentential&gt; = -
	&lt;PP_2 head type sentential&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;PP_2 head type suffix poss&gt; = -         | only in possessor position
	&lt;PP_2 head type prefix poss&gt; = -
	&lt;V head type comma&gt; = -
	&lt;PP head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;PP_2 head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;PP_2 head type suffix&gt;
	&lt;V head subject&gt; = &lt;PP head object&gt;
	&lt;VP head&gt; == [subject:[head:[type:[negative:+]]]] -&gt;  | if subject negative, VP must be
                     [type:[negative:+]]
	&lt;VP head&gt; == [indirectobject:[head:[type:[negative:+]]]] -&gt;  | if indirectobject negative, VP must be
                     [type:[negative:+]]
	 &lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP option&gt; = 9gfinNegSubjorObjVerbRequired
</xsl:text>
</xsl:if>

































































	<xsl:if test="normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='pp' and normalize-space(//ip/@passiveAux)='no' and normalize-space(//neg/@subjVerbRequired)='no' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='pp' and normalize-space(//ip/@passiveAux)='no' and normalize-space(//neg/@subjVerbRequired)='no'">
<xsl:text>
rule {VP option 9h - V final, passive, with PP Agent, not ditrans, no passive Aux}
VP =  PP V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head type passive&gt; = +
	&lt;PP head type passive&gt; = +
	&lt;PP head type sentential&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;PP head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;PP head type prefix&gt;
	&lt;V head subject&gt; = &lt;PP head object&gt;
	 &lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP option&gt; = 9h
</xsl:text>
</xsl:if>

























	<xsl:if test="normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='pp' and normalize-space(//ip/@passiveAux)='no' and normalize-space(//neg/@subjVerbRequired)='yes' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='pp' and normalize-space(//ip/@passiveAux)='no' and normalize-space(//neg/@subjVerbRequired)='yes'">
<xsl:text>
rule {VP option 9hNegSubjVerbRequired - V final, passive, with PP Agent, not ditrans, no passive Aux}
VP =  PP V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head type passive&gt; = +
	&lt;PP head type passive&gt; = +
	&lt;PP head type sentential&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;PP head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;PP head type prefix&gt;
	&lt;V head subject&gt; = &lt;PP head object&gt;
	&lt;VP head&gt; == [subject:[head:[type:[negative:+]]]] -&gt;  | if subject negative, VP must be
                     [type:[negative:+]]
	 &lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP option&gt; = 9hNegSubjVerbRequired
</xsl:text>
</xsl:if>

























	<xsl:if test="normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='pp' and normalize-space(//ip/@passiveAux)='no' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)='no' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='pp' and normalize-space(//ip/@passiveAux)='no' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)='no' or normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='pp' and normalize-space(//ip/@passiveAux)='no' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)='no' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='pp' and normalize-space(//ip/@passiveAux)='no' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)='no'">
<xsl:text>
rule {VP option 9hinit - V final, passive, with PP Agent, PP ditrans, no passive Aux}
VP =  PP_1 PP V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head indirectobject&gt; = &lt;PP_1 head object&gt;
	&lt;V head type passive&gt; = +
	&lt;PP head type passive&gt; = +
	&lt;PP_1 head type passive&gt; = -
	&lt;PP head type sentential&gt; = -
	&lt;PP_1 head type sentential&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;PP_1 head type suffix poss&gt; = -         | only in possessor position
	&lt;PP_1 head type prefix poss&gt; = -
	&lt;PP head type comma&gt; = -
	&lt;PP_1 head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;PP_1 head type prefix&gt;
	&lt;V head subject&gt; = &lt;PP head object&gt;
	 &lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP option&gt; = 9hinit
</xsl:text>
</xsl:if>

































































	<xsl:if test="normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='pp' and normalize-space(//ip/@passiveAux)='no' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='yes' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='pp' and normalize-space(//ip/@passiveAux)='no' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='yes' or normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='pp' and normalize-space(//ip/@passiveAux)='no' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='yes' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='pp' and normalize-space(//ip/@passiveAux)='no' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='yes'">
<xsl:text>
rule {VP option 9hinitNegSubjVerbRequired - V final, passive, with PP Agent, PP ditrans, no passive Aux}
VP =  PP_1 PP V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head indirectobject&gt; = &lt;PP_1 head object&gt;
	&lt;V head type passive&gt; = +
	&lt;PP head type passive&gt; = +
	&lt;PP_1 head type passive&gt; = -
	&lt;PP head type sentential&gt; = -
	&lt;PP_1 head type sentential&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;PP_1 head type suffix poss&gt; = -         | only in possessor position
	&lt;PP_1 head type prefix poss&gt; = -
	&lt;PP head type comma&gt; = -
	&lt;PP_1 head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;PP_1 head type prefix&gt;
	&lt;V head subject&gt; = &lt;PP head object&gt;
	&lt;VP head&gt; == [subject:[head:[type:[negative:+]]]] -&gt;  | if subject negative, VP must be
                     [type:[negative:+]]
	 &lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP option&gt; = 9hinitNegSubjVerbRequired
</xsl:text>
</xsl:if>

























































	<xsl:if test="normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='pp' and normalize-space(//ip/@passiveAux)='no' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)!='no' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='pp' and normalize-space(//ip/@passiveAux)='no' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)!='no' or normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='pp' and normalize-space(//ip/@passiveAux)='no' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)!='no' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='pp' and normalize-space(//ip/@passiveAux)='no' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)!='no'">
<xsl:text>
rule {VP option 9hinitNegObjVerbRequired - V final, passive, with PP Agent, PP ditrans, no passive Aux}
VP =  PP_1 PP V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head indirectobject&gt; = &lt;PP_1 head object&gt;
	&lt;V head type passive&gt; = +
	&lt;PP head type passive&gt; = +
	&lt;PP_1 head type passive&gt; = -
	&lt;PP head type sentential&gt; = -
	&lt;PP_1 head type sentential&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;PP_1 head type suffix poss&gt; = -         | only in possessor position
	&lt;PP_1 head type prefix poss&gt; = -
	&lt;PP head type comma&gt; = -
	&lt;PP_1 head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;PP_1 head type prefix&gt;
	&lt;V head subject&gt; = &lt;PP head object&gt;
	&lt;VP head&gt; == [indirectobject:[head:[type:[negative:+]]]] -&gt;  | if indirectobject negative, VP must be
                     [type:[negative:+]]
	 &lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP option&gt; = 9hinitNegObjVerbRequired
</xsl:text>
</xsl:if>

































































	<xsl:if test="normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='pp' and normalize-space(//ip/@passiveAux)='no' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//neg/@objVerbRequired)!='no' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='pp' and normalize-space(//ip/@passiveAux)='no' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//neg/@objVerbRequired)!='no' or normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='pp' and normalize-space(//ip/@passiveAux)='no' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//neg/@objVerbRequired)!='no' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='pp' and normalize-space(//ip/@passiveAux)='no' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//neg/@objVerbRequired)!='no'">
<xsl:text>
rule {VP option 9hinitNegSubjorObjVerbRequired - V final, passive, with PP Agent, PP ditrans, no passive Aux}
VP =  PP_1 PP V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head indirectobject&gt; = &lt;PP_1 head object&gt;
	&lt;V head type passive&gt; = +
	&lt;PP head type passive&gt; = +
	&lt;PP_1 head type passive&gt; = -
	&lt;PP head type sentential&gt; = -
	&lt;PP_1 head type sentential&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;PP_1 head type suffix poss&gt; = -         | only in possessor position
	&lt;PP_1 head type prefix poss&gt; = -
	&lt;PP head type comma&gt; = -
	&lt;PP_1 head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;PP_1 head type prefix&gt;
	&lt;V head subject&gt; = &lt;PP head object&gt;
	&lt;VP head&gt; == [subject:[head:[type:[negative:+]]]] -&gt;  | if subject negative, VP must be
                     [type:[negative:+]]
	&lt;VP head&gt; == [indirectobject:[head:[type:[negative:+]]]] -&gt;  | if indirectobject negative, VP must be
                     [type:[negative:+]]
	 &lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP option&gt; = 9hinitNegSubjorObjVerbRequired
</xsl:text>
</xsl:if>

































































	<xsl:if test="normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='pp' and normalize-space(//ip/@passiveAux)='no' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)='no' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='pp' and normalize-space(//ip/@passiveAux)='no' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)='no' or normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='pp' and normalize-space(//ip/@passiveAux)='no' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)='no' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='pp' and normalize-space(//ip/@passiveAux)='no' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)='no'">
<xsl:text>
rule {VP option 9hfin - V final, passive, with PP Agent, PP ditrans, no passive Aux}
VP =  PP PP_2 V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head indirectobject&gt; = &lt;PP_2 head object&gt;
	&lt;V head type passive&gt; = +
	&lt;PP head type passive&gt; = +
	&lt;PP_2 head type passive&gt; = -
	&lt;PP head type sentential&gt; = -
	&lt;PP_2 head type sentential&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;PP_2 head type suffix poss&gt; = -         | only in possessor position
	&lt;PP_2 head type prefix poss&gt; = -
	&lt;PP head type comma&gt; = -
	&lt;PP_2 head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;PP_2 head type prefix&gt;
	&lt;V head subject&gt; = &lt;PP head object&gt;
	 &lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP option&gt; = 9hfin
</xsl:text>
</xsl:if>

































































	<xsl:if test="normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='pp' and normalize-space(//ip/@passiveAux)='no' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='yes' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='pp' and normalize-space(//ip/@passiveAux)='no' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='yes' or normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='pp' and normalize-space(//ip/@passiveAux)='no' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='yes' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='pp' and normalize-space(//ip/@passiveAux)='no' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='yes'">
<xsl:text>
rule {VP option 9hfinNegSubjVerbRequired - V final, passive, with PP Agent, PP ditrans, no passive Aux}
VP =  PP PP_2 V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head indirectobject&gt; = &lt;PP_2 head object&gt;
	&lt;V head type passive&gt; = +
	&lt;PP head type passive&gt; = +
	&lt;PP_2 head type passive&gt; = -
	&lt;PP head type sentential&gt; = -
	&lt;PP_2 head type sentential&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;PP_2 head type suffix poss&gt; = -         | only in possessor position
	&lt;PP_2 head type prefix poss&gt; = -
	&lt;PP head type comma&gt; = -
	&lt;PP_2 head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;PP_2 head type prefix&gt;
	&lt;V head subject&gt; = &lt;PP head object&gt;
	&lt;VP head&gt; == [subject:[head:[type:[negative:+]]]] -&gt;  | if subject negative, VP must be
                     [type:[negative:+]]
	 &lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP option&gt; = 9hfinNegSubjVerbRequired
</xsl:text>
</xsl:if>

























































	<xsl:if test="normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='pp' and normalize-space(//ip/@passiveAux)='no' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)!='no' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='pp' and normalize-space(//ip/@passiveAux)='no' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)!='no' or normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='pp' and normalize-space(//ip/@passiveAux)='no' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)!='no' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='pp' and normalize-space(//ip/@passiveAux)='no' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)!='no'">
<xsl:text>
rule {VP option 9hfinNegObjVerbRequired - V final, passive, with PP Agent, PP ditrans, no passive Aux}
VP =  PP PP_2 V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head indirectobject&gt; = &lt;PP_2 head object&gt;
	&lt;V head type passive&gt; = +
	&lt;PP head type passive&gt; = +
	&lt;PP_2 head type passive&gt; = -
	&lt;PP head type sentential&gt; = -
	&lt;PP_2 head type sentential&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;PP_2 head type suffix poss&gt; = -         | only in possessor position
	&lt;PP_2 head type prefix poss&gt; = -
	&lt;PP head type comma&gt; = -
	&lt;PP_2 head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;PP_2 head type prefix&gt;
	&lt;V head subject&gt; = &lt;PP head object&gt;
	&lt;VP head&gt; == [indirectobject:[head:[type:[negative:+]]]] -&gt;  | if indirectobject negative, VP must be
                     [type:[negative:+]]
	 &lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP option&gt; = 9hfinNegObjVerbRequired
</xsl:text>
</xsl:if>

































































	<xsl:if test="normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='pp' and normalize-space(//ip/@passiveAux)='no' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//neg/@objVerbRequired)!='no' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='pp' and normalize-space(//ip/@passiveAux)='no' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//neg/@objVerbRequired)!='no' or normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='pp' and normalize-space(//ip/@passiveAux)='no' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//neg/@objVerbRequired)!='no' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='pp' and normalize-space(//ip/@passiveAux)='no' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//neg/@objVerbRequired)!='no'">
<xsl:text>
rule {VP option 9hfinNegSubjorObjVerbRequired - V final, passive, with PP Agent, PP ditrans, no passive Aux}
VP =  PP PP_2 V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head indirectobject&gt; = &lt;PP_2 head object&gt;
	&lt;V head type passive&gt; = +
	&lt;PP head type passive&gt; = +
	&lt;PP_2 head type passive&gt; = -
	&lt;PP head type sentential&gt; = -
	&lt;PP_2 head type sentential&gt; = -
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;PP_2 head type suffix poss&gt; = -         | only in possessor position
	&lt;PP_2 head type prefix poss&gt; = -
	&lt;PP head type comma&gt; = -
	&lt;PP_2 head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;PP_2 head type prefix&gt;
	&lt;V head subject&gt; = &lt;PP head object&gt;
	&lt;VP head&gt; == [subject:[head:[type:[negative:+]]]] -&gt;  | if subject negative, VP must be
                     [type:[negative:+]]
	&lt;VP head&gt; == [indirectobject:[head:[type:[negative:+]]]] -&gt;  | if indirectobject negative, VP must be
                     [type:[negative:+]]
	 &lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP option&gt; = 9hfinNegSubjorObjVerbRequired
</xsl:text>
</xsl:if>

































































	<xsl:if test="normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='pp' and normalize-space(//ip/@passiveAux)='yes' and normalize-space(//neg/@subjVerbRequired)='no' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='pp' and normalize-space(//ip/@passiveAux)='yes' and normalize-space(//neg/@subjVerbRequired)='no'">
<xsl:text>
rule {VP option 9i - V initial, passive, with PP Agent, not ditrans, passive Aux}
VP = V PP
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head type passive&gt; = +
	&lt;PP head type passive&gt; = +
	&lt;PP head type sentential&gt; = -
	&lt;V head subject&gt; = &lt;PP head object&gt;
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;VP head type auxiliary&gt; = +
	&lt;V head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;PP head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;PP head type suffix&gt;
	&lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP option&gt; = 9i
</xsl:text>
</xsl:if>

























	<xsl:if test="normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='pp' and normalize-space(//ip/@passiveAux)='yes' and normalize-space(//neg/@subjVerbRequired)='yes' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='pp' and normalize-space(//ip/@passiveAux)='yes' and normalize-space(//neg/@subjVerbRequired)='yes'">
<xsl:text>
rule {VP option 9iNegSubjVerbRequired - V initial, passive, with PP Agent, not ditrans, passive Aux}
VP = V PP
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head type passive&gt; = +
	&lt;PP head type passive&gt; = +
	&lt;PP head type sentential&gt; = -
	&lt;V head subject&gt; = &lt;PP head object&gt;
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;VP head type auxiliary&gt; = +
	&lt;V head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;PP head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;PP head type suffix&gt;
	&lt;VP head&gt; == [subject:[head:[type:[negative:+]]]] -&gt;  | if subject negative, VP must be
                     [type:[negative:+]]
	 &lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP option&gt; = 9iNegSubjVerbRequired
</xsl:text>
</xsl:if>

























	<xsl:if test="normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='pp' and normalize-space(//ip/@passiveAux)='yes' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)='no' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='pp' and normalize-space(//ip/@passiveAux)='yes' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)='no' or normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='pp' and normalize-space(//ip/@passiveAux)='yes' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)='no' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='pp' and normalize-space(//ip/@passiveAux)='yes' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)='no'">
<xsl:text>
rule {VP option 9iinit - V initial, passive, with PP Agent, PP ditrans, passive Aux}
VP = V PP_1 PP
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head indirectobject&gt; = &lt;PP_1 head object&gt;
	&lt;V head type passive&gt; = +
	&lt;PP head type passive&gt; = +
	&lt;PP_1 head type passive&gt; = -
	&lt;PP head type sentential&gt; = -
	&lt;PP_1 head type sentential&gt; = -
	&lt;V head subject&gt; = &lt;PP head object&gt;
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;PP_1 head type suffix poss&gt; = -         | only in possessor position
	&lt;PP_1 head type prefix poss&gt; = -
	&lt;VP head type auxiliary&gt; = +
	&lt;V head type comma&gt; = -
	&lt;PP_1 head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;PP head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;PP head type suffix&gt;
	&lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP option&gt; = 9iinit
</xsl:text>
</xsl:if>

































































	<xsl:if test="normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='pp' and normalize-space(//ip/@passiveAux)='yes' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='yes' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='pp' and normalize-space(//ip/@passiveAux)='yes' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='yes' or normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='pp' and normalize-space(//ip/@passiveAux)='yes' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='yes' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='pp' and normalize-space(//ip/@passiveAux)='yes' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='yes'">
<xsl:text>
rule {VP option 9iinitNegSubjVerbRequired - V initial, passive, with PP Agent, PP ditrans, passive Aux}
VP = V PP_1 PP
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head indirectobject&gt; = &lt;PP_1 head object&gt;
	&lt;V head type passive&gt; = +
	&lt;PP head type passive&gt; = +
	&lt;PP_1 head type passive&gt; = -
	&lt;PP head type sentential&gt; = -
	&lt;PP_1 head type sentential&gt; = -
	&lt;V head subject&gt; = &lt;PP head object&gt;
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;PP_1 head type suffix poss&gt; = -         | only in possessor position
	&lt;PP_1 head type prefix poss&gt; = -
	&lt;VP head type auxiliary&gt; = +
	&lt;V head type comma&gt; = -
	&lt;PP_1 head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;PP head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;PP head type suffix&gt;
	&lt;VP head&gt; == [subject:[head:[type:[negative:+]]]] -&gt;  | if subject negative, VP must be
                     [type:[negative:+]]
	&lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP option&gt; = 9iinitNegSubjVerbRequired
</xsl:text>
</xsl:if>

























































	<xsl:if test="normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='pp' and normalize-space(//ip/@passiveAux)='yes' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)!='no' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='pp' and normalize-space(//ip/@passiveAux)='yes' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)!='no' or normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='pp' and normalize-space(//ip/@passiveAux)='yes' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)!='no' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='pp' and normalize-space(//ip/@passiveAux)='yes' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)!='no'">
<xsl:text>
rule {VP option 9iinitNegObjVerbRequired - V initial, passive, with PP Agent, PP ditrans, passive Aux}
VP = V PP_1 PP
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head indirectobject&gt; = &lt;PP_1 head object&gt;
	&lt;V head type passive&gt; = +
	&lt;PP head type passive&gt; = +
	&lt;PP_1 head type passive&gt; = -
	&lt;PP head type sentential&gt; = -
	&lt;PP_1 head type sentential&gt; = -
	&lt;V head subject&gt; = &lt;PP head object&gt;
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;PP_1 head type suffix poss&gt; = -         | only in possessor position
	&lt;PP_1 head type prefix poss&gt; = -
	&lt;VP head type auxiliary&gt; = +
	&lt;V head type comma&gt; = -
	&lt;PP_1 head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;PP head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;PP head type suffix&gt;
	&lt;VP head&gt; == [indirectobject:[head:[type:[negative:+]]]] -&gt;  | if indirectobject negative, VP must be
                     [type:[negative:+]]
	&lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP option&gt; = 9iinitNegObjVerbRequired
</xsl:text>
</xsl:if>

































































	<xsl:if test="normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='pp' and normalize-space(//ip/@passiveAux)='yes' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//neg/@objVerbRequired)!='no' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='pp' and normalize-space(//ip/@passiveAux)='yes' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//neg/@objVerbRequired)!='no' or normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='pp' and normalize-space(//ip/@passiveAux)='yes' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//neg/@objVerbRequired)!='no' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='pp' and normalize-space(//ip/@passiveAux)='yes' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//neg/@objVerbRequired)!='no'">
<xsl:text>
rule {VP option 9iinitNegSubjorObjVerbRequired - V initial, passive, with PP Agent, PP ditrans, passive Aux}
VP = V PP_1 PP
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head indirectobject&gt; = &lt;PP_1 head object&gt;
	&lt;V head type passive&gt; = +
	&lt;PP head type passive&gt; = +
	&lt;PP_1 head type passive&gt; = -
	&lt;PP head type sentential&gt; = -
	&lt;PP_1 head type sentential&gt; = -
	&lt;V head subject&gt; = &lt;PP head object&gt;
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;PP_1 head type suffix poss&gt; = -         | only in possessor position
	&lt;PP_1 head type prefix poss&gt; = -
	&lt;VP head type auxiliary&gt; = +
	&lt;V head type comma&gt; = -
	&lt;PP_1 head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;PP head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;PP head type suffix&gt;
	&lt;VP head&gt; == [subject:[head:[type:[negative:+]]]] -&gt;  | if subject negative, VP must be
                     [type:[negative:+]]
	&lt;VP head&gt; == [indirectobject:[head:[type:[negative:+]]]] -&gt;  | if indirectobject negative, VP must be
                     [type:[negative:+]]
	&lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP option&gt; = 9iinitNegSubjorObjVerbRequired
</xsl:text>
</xsl:if>

































































	<xsl:if test="normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='pp' and normalize-space(//ip/@passiveAux)='yes' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)='no' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='pp' and normalize-space(//ip/@passiveAux)='yes' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)='no' or normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='pp' and normalize-space(//ip/@passiveAux)='yes' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)='no' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='pp' and normalize-space(//ip/@passiveAux)='yes' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)='no'">
<xsl:text>
rule {VP option 9ifin - V initial, passive, with PP Agent, PP ditrans, passive Aux}
VP = V PP PP_2
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head indirectobject&gt; = &lt;PP_2 head object&gt;
	&lt;V head type passive&gt; = +
	&lt;PP head type passive&gt; = +
	&lt;PP_2 head type passive&gt; = -
	&lt;PP head type sentential&gt; = -
	&lt;PP_2 head type sentential&gt; = -
	&lt;V head subject&gt; = &lt;PP head object&gt;
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;PP_2 head type suffix poss&gt; = -         | only in possessor position
	&lt;PP_2 head type prefix poss&gt; = -
	&lt;VP head type auxiliary&gt; = +
	&lt;V head type comma&gt; = -
	&lt;PP head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;PP_2 head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;PP_2 head type suffix&gt;
	&lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP option&gt; = 9ifin
</xsl:text>
</xsl:if>

































































	<xsl:if test="normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='pp' and normalize-space(//ip/@passiveAux)='yes' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='yes' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='pp' and normalize-space(//ip/@passiveAux)='yes' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='yes' or normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='pp' and normalize-space(//ip/@passiveAux)='yes' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='yes' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='pp' and normalize-space(//ip/@passiveAux)='yes' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='yes'">
<xsl:text>
rule {VP option 9ifinNegSubjVerbRequired - V initial, passive, with PP Agent, PP ditrans, passive Aux}
VP = V PP PP_2
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head indirectobject&gt; = &lt;PP_2 head object&gt;
	&lt;V head type passive&gt; = +
	&lt;PP head type passive&gt; = +
	&lt;PP_2 head type passive&gt; = -
	&lt;PP head type sentential&gt; = -
	&lt;PP_2 head type sentential&gt; = -
	&lt;V head subject&gt; = &lt;PP head object&gt;
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;PP_2 head type suffix poss&gt; = -         | only in possessor position
	&lt;PP_2 head type prefix poss&gt; = -
	&lt;VP head type auxiliary&gt; = +
	&lt;V head type comma&gt; = -
	&lt;PP head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;PP_2 head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;PP_2 head type suffix&gt;
	&lt;VP head&gt; == [subject:[head:[type:[negative:+]]]] -&gt;  | if subject negative, VP must be
                     [type:[negative:+]]
	&lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP option&gt; = 9ifinNegSubjVerbRequired
</xsl:text>
</xsl:if>

























































	<xsl:if test="normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='pp' and normalize-space(//ip/@passiveAux)='yes' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)!='no' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='pp' and normalize-space(//ip/@passiveAux)='yes' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)!='no' or normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='pp' and normalize-space(//ip/@passiveAux)='yes' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)!='no' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='pp' and normalize-space(//ip/@passiveAux)='yes' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)!='no'">
<xsl:text>
rule {VP option 9ifinNegObjVerbRequired - V initial, passive, with PP Agent, PP ditrans, passive Aux}
VP = V PP PP_2
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head indirectobject&gt; = &lt;PP_2 head object&gt;
	&lt;V head type passive&gt; = +
	&lt;PP head type passive&gt; = +
	&lt;PP_2 head type passive&gt; = -
	&lt;PP head type sentential&gt; = -
	&lt;PP_2 head type sentential&gt; = -
	&lt;V head subject&gt; = &lt;PP head object&gt;
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;PP_2 head type suffix poss&gt; = -         | only in possessor position
	&lt;PP_2 head type prefix poss&gt; = -
	&lt;VP head type auxiliary&gt; = +
	&lt;V head type comma&gt; = -
	&lt;PP head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;PP_2 head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;PP_2 head type suffix&gt;
	&lt;VP head&gt; == [indirectobject:[head:[type:[negative:+]]]] -&gt;  | if indirectobject negative, VP must be
                     [type:[negative:+]]
	 &lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP option&gt; = 9ifinNegObjVerbRequired
</xsl:text>
</xsl:if>

































































	<xsl:if test="normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='pp' and normalize-space(//ip/@passiveAux)='yes' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//neg/@objVerbRequired)!='no' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='pp' and normalize-space(//ip/@passiveAux)='yes' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//neg/@objVerbRequired)!='no' or normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='pp' and normalize-space(//ip/@passiveAux)='yes' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//neg/@objVerbRequired)!='no' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='pp' and normalize-space(//ip/@passiveAux)='yes' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//neg/@objVerbRequired)!='no'">
<xsl:text>
rule {VP option 9ifinNegSubjorObjVerbRequired - V initial, passive, with PP Agent, PP ditrans, passive Aux}
VP = V PP PP_2
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head indirectobject&gt; = &lt;PP_2 head object&gt;
	&lt;V head type passive&gt; = +
	&lt;PP head type passive&gt; = +
	&lt;PP_2 head type passive&gt; = -
	&lt;PP head type sentential&gt; = -
	&lt;PP_2 head type sentential&gt; = -
	&lt;V head subject&gt; = &lt;PP head object&gt;
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;PP_2 head type suffix poss&gt; = -         | only in possessor position
	&lt;PP_2 head type prefix poss&gt; = -
	&lt;VP head type auxiliary&gt; = +
	&lt;V head type comma&gt; = -
	&lt;PP head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;PP_2 head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;PP_2 head type suffix&gt;
	&lt;VP head&gt; == [subject:[head:[type:[negative:+]]]] -&gt;  | if subject negative, VP must be
                     [type:[negative:+]]
	&lt;VP head&gt; == [indirectobject:[head:[type:[negative:+]]]] -&gt;  | if indirectobject negative, VP must be
                     [type:[negative:+]]
	 &lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP option&gt; = 9ifinNegSubjorObjVerbRequired
</xsl:text>
</xsl:if>

































































	<xsl:if test="normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='pp' and normalize-space(//ip/@passiveAux)='yes' and normalize-space(//neg/@subjVerbRequired)='no' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='pp' and normalize-space(//ip/@passiveAux)='yes' and normalize-space(//neg/@subjVerbRequired)='no'">
<xsl:text>
rule {VP option 9j - V final, passive, with PP Agent, not ditrans, passive Aux}
VP =  PP V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head type passive&gt; = +
	&lt;PP head type passive&gt; = +
	&lt;PP head type sentential&gt; = -
	&lt;V head subject&gt; = &lt;PP head object&gt;
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;VP head type auxiliary&gt; = +
	&lt;PP head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;PP head type prefix&gt;
	&lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP option&gt; = 9j
</xsl:text>
</xsl:if>

























	<xsl:if test="normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='pp' and normalize-space(//ip/@passiveAux)='yes' and normalize-space(//neg/@subjVerbRequired)='yes' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='pp' and normalize-space(//ip/@passiveAux)='yes' and normalize-space(//neg/@subjVerbRequired)='yes'">
<xsl:text>
rule {VP option 9jNegSubjVerbRequired - V final, passive, with PP Agent, not ditrans, passive Aux}
VP =  PP V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head type passive&gt; = +
	&lt;PP head type passive&gt; = +
	&lt;PP head type sentential&gt; = -
	&lt;V head subject&gt; = &lt;PP head object&gt;
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;VP head type auxiliary&gt; = +
	&lt;PP head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;PP head type prefix&gt;
	&lt;VP head&gt; == [subject:[head:[type:[negative:+]]]] -&gt;  | if subject negative, VP must be
                     [type:[negative:+]]
	 &lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP option&gt; = 9jNegSubjVerbRequired
</xsl:text>
</xsl:if>

























	<xsl:if test="normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='pp' and normalize-space(//ip/@passiveAux)='yes' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)='no' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='pp' and normalize-space(//ip/@passiveAux)='yes' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)='no' or normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='pp' and normalize-space(//ip/@passiveAux)='yes' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)='no' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='pp' and normalize-space(//ip/@passiveAux)='yes' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)='no'">
<xsl:text>
rule {VP option 9jinit - V final, passive, with PP Agent, PP ditrans, passive Aux}
VP =  PP_1 PP V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head indirectobject&gt; = &lt;PP_1 head object&gt;
	&lt;V head type passive&gt; = +
	&lt;PP head type passive&gt; = +
	&lt;PP_1 head type passive&gt; = -
	&lt;PP head type sentential&gt; = -
	&lt;PP_1 head type sentential&gt; = -
	&lt;V head subject&gt; = &lt;PP head object&gt;
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;PP_1 head type suffix poss&gt; = -         | only in possessor position
	&lt;PP_1 head type prefix poss&gt; = -
	&lt;VP head type auxiliary&gt; = +
	&lt;PP head type comma&gt; = -
	&lt;PP_1 head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;PP_1 head type prefix&gt;
	&lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP option&gt; = 9jinit
</xsl:text>
</xsl:if>

































































	<xsl:if test="normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='pp' and normalize-space(//ip/@passiveAux)='yes' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='yes' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='pp' and normalize-space(//ip/@passiveAux)='yes' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='yes' or normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='pp' and normalize-space(//ip/@passiveAux)='yes' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='yes' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='pp' and normalize-space(//ip/@passiveAux)='yes' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='yes'">
<xsl:text>
rule {VP option 9jinitNegSubjVerbRequired - V final, passive, with PP Agent, PP ditrans, passive Aux}
VP =  PP_1 PP V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head indirectobject&gt; = &lt;PP_1 head object&gt;
	&lt;V head type passive&gt; = +
	&lt;PP head type passive&gt; = +
	&lt;PP_1 head type passive&gt; = -
	&lt;PP head type sentential&gt; = -
	&lt;PP_1 head type sentential&gt; = -
	&lt;V head subject&gt; = &lt;PP head object&gt;
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;PP_1 head type suffix poss&gt; = -         | only in possessor position
	&lt;PP_1 head type prefix poss&gt; = -
	&lt;VP head type auxiliary&gt; = +
	&lt;PP head type comma&gt; = -
	&lt;PP_1 head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;PP_1 head type prefix&gt;
	&lt;VP head&gt; == [subject:[head:[type:[negative:+]]]] -&gt;  | if subject negative, VP must be
                     [type:[negative:+]]
	 &lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP option&gt; = 9jinitNegSubjVerbRequired
</xsl:text>
</xsl:if>

























































	<xsl:if test="normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='pp' and normalize-space(//ip/@passiveAux)='yes' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)!='no' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='pp' and normalize-space(//ip/@passiveAux)='yes' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)!='no' or normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='pp' and normalize-space(//ip/@passiveAux)='yes' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)!='no' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='pp' and normalize-space(//ip/@passiveAux)='yes' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)!='no'">
<xsl:text>
rule {VP option 9jinitNegObjVerbRequired - V final, passive, with PP Agent, PP ditrans, passive Aux}
VP =  PP_1 PP V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head indirectobject&gt; = &lt;PP_1 head object&gt;
	&lt;V head type passive&gt; = +
	&lt;PP head type passive&gt; = +
	&lt;PP_1 head type passive&gt; = -
	&lt;PP head type sentential&gt; = -
	&lt;PP_1 head type sentential&gt; = -
	&lt;V head subject&gt; = &lt;PP head object&gt;
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;PP_1 head type suffix poss&gt; = -         | only in possessor position
	&lt;PP_1 head type prefix poss&gt; = -
	&lt;VP head type auxiliary&gt; = +
	&lt;PP head type comma&gt; = -
	&lt;PP_1 head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;PP_1 head type prefix&gt;
	&lt;VP head&gt; == [indirectobject:[head:[type:[negative:+]]]] -&gt;  | if indirectobject negative, VP must be
                     [type:[negative:+]]
	 &lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP option&gt; = 9jinitNegObjVerbRequired
</xsl:text>
</xsl:if>

































































	<xsl:if test="normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='pp' and normalize-space(//ip/@passiveAux)='yes' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//neg/@objVerbRequired)!='no' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='pp' and normalize-space(//ip/@passiveAux)='yes' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//neg/@objVerbRequired)!='no' or normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='pp' and normalize-space(//ip/@passiveAux)='yes' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//neg/@objVerbRequired)!='no' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='pp' and normalize-space(//ip/@passiveAux)='yes' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//neg/@objVerbRequired)!='no'">
<xsl:text>
rule {VP option 9jinitNegSubjorObjVerbRequired - V final, passive, with PP Agent, PP ditrans, passive Aux}
VP =  PP_1 PP V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head indirectobject&gt; = &lt;PP_1 head object&gt;
	&lt;V head type passive&gt; = +
	&lt;PP head type passive&gt; = +
	&lt;PP_1 head type passive&gt; = -
	&lt;PP head type sentential&gt; = -
	&lt;PP_1 head type sentential&gt; = -
	&lt;V head subject&gt; = &lt;PP head object&gt;
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;PP_1 head type suffix poss&gt; = -         | only in possessor position
	&lt;PP_1 head type prefix poss&gt; = -
	&lt;VP head type auxiliary&gt; = +
	&lt;PP head type comma&gt; = -
	&lt;PP_1 head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;PP_1 head type prefix&gt;
	&lt;VP head&gt; == [subject:[head:[type:[negative:+]]]] -&gt;  | if subject negative, VP must be
                     [type:[negative:+]]
	&lt;VP head&gt; == [indirectobject:[head:[type:[negative:+]]]] -&gt;  | if indirectobject negative, VP must be
                     [type:[negative:+]]
	 &lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP option&gt; = 9jinitNegSubjorObjVerbRequired
</xsl:text>
</xsl:if>

































































	<xsl:if test="normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='pp' and normalize-space(//ip/@passiveAux)='yes' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)='no' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='pp' and normalize-space(//ip/@passiveAux)='yes' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)='no' or normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='pp' and normalize-space(//ip/@passiveAux)='yes' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)='no' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='pp' and normalize-space(//ip/@passiveAux)='yes' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)='no'">
<xsl:text>
rule {VP option 9jfin - V final, passive, with PP Agent, PP ditrans, passive Aux}
VP =  PP PP_2 V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head indirectobject&gt; = &lt;PP_2 head object&gt;
	&lt;V head type passive&gt; = +
	&lt;PP head type passive&gt; = +
	&lt;PP_2 head type passive&gt; = -
	&lt;PP head type sentential&gt; = -
	&lt;PP_2 head type sentential&gt; = -
	&lt;V head subject&gt; = &lt;PP head object&gt;
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;PP_2 head type suffix poss&gt; = -         | only in possessor position
	&lt;PP_2 head type prefix poss&gt; = -
	&lt;VP head type auxiliary&gt; = +
	&lt;PP head type comma&gt; = -
	&lt;PP_2 head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;PP head type prefix&gt;
	&lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP option&gt; = 9jfin
</xsl:text>
</xsl:if>

































































	<xsl:if test="normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='pp' and normalize-space(//ip/@passiveAux)='yes' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='yes' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='pp' and normalize-space(//ip/@passiveAux)='yes' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='yes' or normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='pp' and normalize-space(//ip/@passiveAux)='yes' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='yes' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='pp' and normalize-space(//ip/@passiveAux)='yes' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='yes'">
<xsl:text>
rule {VP option 9jfinNegSubjVerbRequired - V final, passive, with PP Agent, PP ditrans, passive Aux}
VP =  PP PP_2 V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head indirectobject&gt; = &lt;PP_2 head object&gt;
	&lt;V head type passive&gt; = +
	&lt;PP head type passive&gt; = +
	&lt;PP_2 head type passive&gt; = -
	&lt;PP head type sentential&gt; = -
	&lt;PP_2 head type sentential&gt; = -
	&lt;V head subject&gt; = &lt;PP head object&gt;
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;PP_2 head type suffix poss&gt; = -         | only in possessor position
	&lt;PP_2 head type prefix poss&gt; = -
	&lt;VP head type auxiliary&gt; = +
	&lt;PP head type comma&gt; = -
	&lt;PP_2 head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;PP head type prefix&gt;
	&lt;VP head&gt; == [subject:[head:[type:[negative:+]]]] -&gt;  | if subject negative, VP must be
                     [type:[negative:+]]
	 &lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP option&gt; = 9jfinNegSubjVerbRequired
</xsl:text>
</xsl:if>

























































	<xsl:if test="normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='pp' and normalize-space(//ip/@passiveAux)='yes' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)!='no' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='pp' and normalize-space(//ip/@passiveAux)='yes' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)!='no' or normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='pp' and normalize-space(//ip/@passiveAux)='yes' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)!='no' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='pp' and normalize-space(//ip/@passiveAux)='yes' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)!='no'">
<xsl:text>
rule {VP option 9jfinNegObjVerbRequired - V final, passive, with PP Agent, PP ditrans, passive Aux}
VP =  PP PP_2 V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head indirectobject&gt; = &lt;PP_2 head object&gt;
	&lt;V head type passive&gt; = +
	&lt;PP head type passive&gt; = +
	&lt;PP_2 head type passive&gt; = -
	&lt;PP head type sentential&gt; = -
	&lt;PP_2 head type sentential&gt; = -
	&lt;V head subject&gt; = &lt;PP head object&gt;
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;PP_2 head type suffix poss&gt; = -         | only in possessor position
	&lt;PP_2 head type prefix poss&gt; = -
	&lt;VP head type auxiliary&gt; = +
	&lt;PP head type comma&gt; = -
	&lt;PP_2 head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;PP head type prefix&gt;
	&lt;VP head&gt; == [indirectobject:[head:[type:[negative:+]]]] -&gt;  | if indirectobject negative, VP must be
                     [type:[negative:+]]
	 &lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP option&gt; = 9jfinNegObjVerbRequired
</xsl:text>
</xsl:if>

































































	<xsl:if test="normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='pp' and normalize-space(//ip/@passiveAux)='yes' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//neg/@objVerbRequired)!='no' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='pp' and normalize-space(//ip/@passiveAux)='yes' and normalize-space(//ip/@diCat)='pp' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//neg/@objVerbRequired)!='no' or normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='pp' and normalize-space(//ip/@passiveAux)='yes' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//neg/@objVerbRequired)!='no' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='pp' and normalize-space(//ip/@passiveAux)='yes' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//neg/@objVerbRequired)!='no'">
<xsl:text>
rule {VP option 9jfinNegSubjorObjVerbRequired - V final, passive, with PP Agent, PP ditrans, passive Aux}
VP =  PP PP_2 V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head indirectobject&gt; = &lt;PP_2 head object&gt;
	&lt;V head type passive&gt; = +
	&lt;PP head type passive&gt; = +
	&lt;PP_2 head type passive&gt; = -
	&lt;PP head type sentential&gt; = -
	&lt;PP_2 head type sentential&gt; = -
	&lt;V head subject&gt; = &lt;PP head object&gt;
	&lt;PP head type suffix poss&gt; = -         | only in possessor position
	&lt;PP head type prefix poss&gt; = -
	&lt;PP_2 head type suffix poss&gt; = -         | only in possessor position
	&lt;PP_2 head type prefix poss&gt; = -
	&lt;VP head type auxiliary&gt; = +
	&lt;PP head type comma&gt; = -
	&lt;PP_2 head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;PP head type prefix&gt;
	&lt;VP head&gt; == [subject:[head:[type:[negative:+]]]] -&gt;  | if subject negative, VP must be
                     [type:[negative:+]]
	&lt;VP head&gt; == [indirectobject:[head:[type:[negative:+]]]] -&gt;  | if indirectobject negative, VP must be
                     [type:[negative:+]]
	 &lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP option&gt; = 9jfinNegSubjorObjVerbRequired
</xsl:text>
</xsl:if>


































































	<xsl:if test="normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='dp' and normalize-space(//ip/@passiveAux)='no' and normalize-space(//neg/@subjVerbRequired)='no' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='dp' and normalize-space(//ip/@passiveAux)='no' and normalize-space(//neg/@subjVerbRequired)='no'">
<xsl:text>
rule {VP option 9k - V initial, passive, with DP Agent phrase, no passive Aux}
VP = V DP
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head type passive&gt; = +
	&lt;V head subject&gt; = &lt;DP&gt;
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;V head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;DP head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;DP head type suffix&gt;
	 &lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP option&gt; = 9k
</xsl:text>
</xsl:if>

























	<xsl:if test="normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='dp' and normalize-space(//ip/@passiveAux)='no' and normalize-space(//neg/@subjVerbRequired)='yes' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='dp' and normalize-space(//ip/@passiveAux)='no' and normalize-space(//neg/@subjVerbRequired)='yes'">
<xsl:text>
rule {VP option 9kNegSubjVerbRequired - V initial, passive, with DP Agent phrase, no passive Aux}
VP = V DP
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head type passive&gt; = +
	&lt;V head subject&gt; = &lt;DP&gt;
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;V head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;DP head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;DP head type suffix&gt;
	 &lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP head&gt; == [subject:[head:[type:[negative:+]]]] -&gt;  | if subject negative, VP must be
                     [type:[negative:+]]
	&lt;VP option&gt; = 9kNegSubjVerbRequired
</xsl:text>
</xsl:if>

























	<xsl:if test="normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='dp' and normalize-space(//ip/@passiveAux)='no' and normalize-space(//ip/@diCat)='dp' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)='no' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='dp' and normalize-space(//ip/@passiveAux)='no' and normalize-space(//ip/@diCat)='dp' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)='no' or normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='dp' and normalize-space(//ip/@passiveAux)='no' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)='no' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='dp' and normalize-space(//ip/@passiveAux)='no' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)='no'">
<xsl:text>
rule {VP option 9kinit - V initial, passive, with DP Agent phrase, DP ditrans, no passive Aux}
VP = V DP DP_1
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head type passive&gt; = +
	&lt;V head subject&gt; = &lt;DP&gt;
	&lt;V head indirectobject&gt; = &lt;DP_1&gt;
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;DP_1 head type suffix poss&gt; = -         | only in possessor position
	&lt;DP_1 head type prefix poss&gt; = -
	&lt;DP_1 head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP_1 head type suffix copular&gt; = -
	&lt;V head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;DP_1 head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;DP_1 head type suffix&gt;
	 &lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP option&gt; = 9kinit
</xsl:text>
</xsl:if>

































































	<xsl:if test="normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='dp' and normalize-space(//ip/@passiveAux)='no' and normalize-space(//ip/@diCat)='dp' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//neg/@objVerbRequired)='no' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='dp' and normalize-space(//ip/@passiveAux)='no' and normalize-space(//ip/@diCat)='dp' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//neg/@objVerbRequired)='no' or normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='dp' and normalize-space(//ip/@passiveAux)='no' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//neg/@objVerbRequired)='no' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='dp' and normalize-space(//ip/@passiveAux)='no' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//neg/@objVerbRequired)='no'">
<xsl:text>
rule {VP option 9kinitNegSubjVerbRequired - V initial, passive, with DP Agent phrase, DP ditrans, no passive Aux}
VP = V DP DP_1
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head type passive&gt; = +
	&lt;V head subject&gt; = &lt;DP&gt;
	&lt;V head indirectobject&gt; = &lt;DP_1&gt;
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;DP_1 head type suffix poss&gt; = -         | only in possessor position
	&lt;DP_1 head type prefix poss&gt; = -
	&lt;DP_1 head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP_1 head type suffix copular&gt; = -
	&lt;V head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;DP_1 head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;DP_1 head type suffix&gt;
	&lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP head&gt; == [subject:[head:[type:[negative:+]]]] -&gt;  | if subject negative, VP must be
                     [type:[negative:+]]
	&lt;VP option&gt; = 9kinitNegSubjVerbRequired
</xsl:text>
</xsl:if>

































































	<xsl:if test="normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='dp' and normalize-space(//ip/@passiveAux)='no' and normalize-space(//ip/@diCat)='dp' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)!='no' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='dp' and normalize-space(//ip/@passiveAux)='no' and normalize-space(//ip/@diCat)='dp' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)!='no' or normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='dp' and normalize-space(//ip/@passiveAux)='no' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)!='no' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='dp' and normalize-space(//ip/@passiveAux)='no' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)!='no'">
<xsl:text>
rule {VP option 9kinitNegObjVerbRequired - V initial, passive, with DP Agent phrase, DP ditrans, no passive Aux}
VP = V DP DP_1
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head type passive&gt; = +
	&lt;V head subject&gt; = &lt;DP&gt;
	&lt;V head indirectobject&gt; = &lt;DP_1&gt;
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;DP_1 head type suffix poss&gt; = -         | only in possessor position
	&lt;DP_1 head type prefix poss&gt; = -
	&lt;DP_1 head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP_1 head type suffix copular&gt; = -
	&lt;V head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;DP_1 head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;DP_1 head type suffix&gt;
	&lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP head&gt; == [indirectobject:[head:[type:[negative:+]]]] -&gt;  | if indirect object negative, VP must be
                     [type:[negative:+]]
	&lt;VP option&gt; = 9kinitNegObjVerbRequired
</xsl:text>
</xsl:if>

































































	<xsl:if test="normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='dp' and normalize-space(//ip/@passiveAux)='no' and normalize-space(//ip/@diCat)='dp' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//neg/@objVerbRequired)!='no' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='dp' and normalize-space(//ip/@passiveAux)='no' and normalize-space(//ip/@diCat)='dp' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//neg/@objVerbRequired)!='no' or normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='dp' and normalize-space(//ip/@passiveAux)='no' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//neg/@objVerbRequired)!='no' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='dp' and normalize-space(//ip/@passiveAux)='no' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//neg/@objVerbRequired)!='no'">
<xsl:text>
rule {VP option 9kinitNegSubjorObjVerbRequired - V initial, passive, with DP Agent phrase, DP ditrans, no passive Aux}
VP = V DP DP_1
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head type passive&gt; = +
	&lt;V head subject&gt; = &lt;DP&gt;
	&lt;V head indirectobject&gt; = &lt;DP_1&gt;
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;DP_1 head type suffix poss&gt; = -         | only in possessor position
	&lt;DP_1 head type prefix poss&gt; = -
	&lt;DP_1 head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP_1 head type suffix copular&gt; = -
	&lt;V head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;DP_1 head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;DP_1 head type suffix&gt;
	&lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP head&gt; == [subject:[head:[type:[negative:+]]]] -&gt;  | if subject negative, VP must be
                     [type:[negative:+]]
	&lt;VP head&gt; == [indirectobject:[head:[type:[negative:+]]]] -&gt;  | if indirect object negative, VP must be
                     [type:[negative:+]]
	&lt;VP option&gt; = 9kinitNegSubjorObjVerbRequired
</xsl:text>
</xsl:if>

































































	<xsl:if test="normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='dp' and normalize-space(//ip/@passiveAux)='no' and normalize-space(//ip/@diCat)='dp' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)='no' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='dp' and normalize-space(//ip/@passiveAux)='no' and normalize-space(//ip/@diCat)='dp' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)='no' or normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='dp' and normalize-space(//ip/@passiveAux)='no' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)='no' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='dp' and normalize-space(//ip/@passiveAux)='no' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)='no'">
<xsl:text>
rule {VP option 9kfin - V initial, passive, with DP Agent phrase, DP ditrans, no passive Aux}
VP = V DP DP_1
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head type passive&gt; = +
	&lt;V head subject&gt; = &lt;DP_1&gt;
	&lt;V head indirectobject&gt; = &lt;DP&gt;
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;DP_1 head type suffix poss&gt; = -         | only in possessor position
	&lt;DP_1 head type prefix poss&gt; = -
	&lt;DP_1 head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP_1 head type suffix copular&gt; = -
	&lt;V head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;DP_1 head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;DP_1 head type suffix&gt;
	 &lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP option&gt; = 9kfin
</xsl:text>
</xsl:if>

































































	<xsl:if test="normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='dp' and normalize-space(//ip/@passiveAux)='no' and normalize-space(//ip/@diCat)='dp' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//neg/@objVerbRequired)='no' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='dp' and normalize-space(//ip/@passiveAux)='no' and normalize-space(//ip/@diCat)='dp' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//neg/@objVerbRequired)='no' or normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='dp' and normalize-space(//ip/@passiveAux)='no' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//neg/@objVerbRequired)='no' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='dp' and normalize-space(//ip/@passiveAux)='no' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//neg/@objVerbRequired)='no'">
<xsl:text>
rule {VP option 9kfinNegSubjVerbRequired - V initial, passive, with DP Agent phrase, DP ditrans, no passive Aux}
VP = V DP DP_1
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head type passive&gt; = +
	&lt;V head subject&gt; = &lt;DP_1&gt;
	&lt;V head indirectobject&gt; = &lt;DP&gt;
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;DP_1 head type suffix poss&gt; = -         | only in possessor position
	&lt;DP_1 head type prefix poss&gt; = -
	&lt;DP_1 head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP_1 head type suffix copular&gt; = -
	&lt;V head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;DP_1 head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;DP_1 head type suffix&gt;
	&lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP head&gt; == [subject:[head:[type:[negative:+]]]] -&gt;  | if subject negative, VP must be
                     [type:[negative:+]]
	&lt;VP option&gt; = 9kfinNegSubjVerbRequired
</xsl:text>
</xsl:if>

































































	<xsl:if test="normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='dp' and normalize-space(//ip/@passiveAux)='no' and normalize-space(//ip/@diCat)='dp' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)!='no' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='dp' and normalize-space(//ip/@passiveAux)='no' and normalize-space(//ip/@diCat)='dp' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)!='no' or normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='dp' and normalize-space(//ip/@passiveAux)='no' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)!='no' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='dp' and normalize-space(//ip/@passiveAux)='no' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)!='no'">
<xsl:text>
rule {VP option 9kfinNegObjVerbRequired - V initial, passive, with DP Agent phrase, DP ditrans, no passive Aux}
VP = V DP DP_1
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head type passive&gt; = +
	&lt;V head subject&gt; = &lt;DP_1&gt;
	&lt;V head indirectobject&gt; = &lt;DP&gt;
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;DP_1 head type suffix poss&gt; = -         | only in possessor position
	&lt;DP_1 head type prefix poss&gt; = -
	&lt;DP_1 head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP_1 head type suffix copular&gt; = -
	&lt;V head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;DP_1 head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;DP_1 head type suffix&gt;
	&lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP head&gt; == [indirectobject:[head:[type:[negative:+]]]] -&gt;  | if indirect object negative, VP must be
                     [type:[negative:+]]
	&lt;VP option&gt; = 9kfinNegObjVerbRequired
</xsl:text>
</xsl:if>

































































	<xsl:if test="normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='dp' and normalize-space(//ip/@passiveAux)='no' and normalize-space(//ip/@diCat)='dp' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//neg/@objVerbRequired)!='no' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='dp' and normalize-space(//ip/@passiveAux)='no' and normalize-space(//ip/@diCat)='dp' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//neg/@objVerbRequired)!='no' or normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='dp' and normalize-space(//ip/@passiveAux)='no' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//neg/@objVerbRequired)!='no' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='dp' and normalize-space(//ip/@passiveAux)='no' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//neg/@objVerbRequired)!='no'">
<xsl:text>
rule {VP option 9kfinNegSubjorObjVerbRequired - V initial, passive, with DP Agent phrase, DP ditrans, no passive Aux}
VP = V DP DP_1
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head type passive&gt; = +
	&lt;V head subject&gt; = &lt;DP_1&gt;
	&lt;V head indirectobject&gt; = &lt;DP&gt;
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;DP_1 head type suffix poss&gt; = -         | only in possessor position
	&lt;DP_1 head type prefix poss&gt; = -
	&lt;DP_1 head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP_1 head type suffix copular&gt; = -
	&lt;V head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;DP_1 head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;DP_1 head type suffix&gt;
	&lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP head&gt; == [subject:[head:[type:[negative:+]]]] -&gt;  | if subject negative, VP must be
                     [type:[negative:+]]
	&lt;VP head&gt; == [indirectobject:[head:[type:[negative:+]]]] -&gt;  | if indirect object negative, VP must be
                     [type:[negative:+]]
	&lt;VP option&gt; = 9kfinNegSubjorObjVerbRequired
</xsl:text>
</xsl:if>

































































	<xsl:if test="normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='dp' and normalize-space(//ip/@passiveAux)='no' and normalize-space(//neg/@subjVerbRequired)='no' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='dp' and normalize-space(//ip/@passiveAux)='no' and normalize-space(//neg/@subjVerbRequired)='no'">
<xsl:text>
rule {VP option 9l - V final, passive, with DP Agent phrase, no passive Aux}
VP = DP V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head type passive&gt; = +
	&lt;V head subject&gt; = &lt;DP&gt;
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;DP head type prefix&gt;
	 &lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP option&gt; = 9l
</xsl:text>
</xsl:if>

























	<xsl:if test="normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='dp' and normalize-space(//ip/@passiveAux)='no' and normalize-space(//neg/@subjVerbRequired)='yes' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='dp' and normalize-space(//ip/@passiveAux)='no' and normalize-space(//neg/@subjVerbRequired)='yes'">
<xsl:text>
rule {VP option 9lNegSubjVerbRequired - V final, passive, with DP Agent phrase, no passive Aux}
VP = DP V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head type passive&gt; = +
	&lt;V head subject&gt; = &lt;DP&gt;
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;DP head type prefix&gt;
	 &lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP head&gt; == [subject:[head:[type:[negative:+]]]] -&gt;  | if subject negative, VP must be
                     [type:[negative:+]]
	&lt;VP option&gt; = 9lNegSubjVerbRequired
</xsl:text>
</xsl:if>

























	<xsl:if test="normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='dp' and normalize-space(//ip/@passiveAux)='no' and normalize-space(//ip/@diCat)='dp' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)='no' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='dp' and normalize-space(//ip/@passiveAux)='no' and normalize-space(//ip/@diCat)='dp' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)='no' or normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='dp' and normalize-space(//ip/@passiveAux)='no' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)='no' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='dp' and normalize-space(//ip/@passiveAux)='no' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)='no'">
<xsl:text>
rule {VP option 9linit - V final, passive, with DP Agent phrase, DP ditrans, no passive Aux}
VP = DP DP_1 V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head type passive&gt; = +
	&lt;V head subject&gt; = &lt;DP&gt;
	&lt;V head indirectobject&gt; = &lt;DP_1&gt;
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;DP_1 head type suffix poss&gt; = -         | only in possessor position
	&lt;DP_1 head type prefix poss&gt; = -
	&lt;DP_1 head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP_1 head type suffix copular&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;DP_1 head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;DP_1 head type prefix&gt;
	 &lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP option&gt; = 9linit
</xsl:text>
</xsl:if>

































































	<xsl:if test="normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='dp' and normalize-space(//ip/@passiveAux)='no' and normalize-space(//ip/@diCat)='dp' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//neg/@objVerbRequired)='no' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='dp' and normalize-space(//ip/@passiveAux)='no' and normalize-space(//ip/@diCat)='dp' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//neg/@objVerbRequired)='no' or normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='dp' and normalize-space(//ip/@passiveAux)='no' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//neg/@objVerbRequired)='no' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='dp' and normalize-space(//ip/@passiveAux)='no' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//neg/@objVerbRequired)='no'">
<xsl:text>
rule {VP option 9linitNegSubjVerbRequired - V final, passive, with DP Agent phrase, DP ditrans, no passive Aux}
VP = DP DP_1 V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head type passive&gt; = +
	&lt;V head subject&gt; = &lt;DP&gt;
	&lt;V head indirectobject&gt; = &lt;DP_1&gt;
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;DP_1 head type suffix poss&gt; = -         | only in possessor position
	&lt;DP_1 head type prefix poss&gt; = -
	&lt;DP_1 head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP_1 head type suffix copular&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;DP_1 head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;DP_1 head type prefix&gt;
	&lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP head&gt; == [subject:[head:[type:[negative:+]]]] -&gt;  | if subject negative, VP must be
                     [type:[negative:+]]
	&lt;VP option&gt; = 9linitNegSubjVerbRequired
</xsl:text>
</xsl:if>

































































	<xsl:if test="normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='dp' and normalize-space(//ip/@passiveAux)='no' and normalize-space(//ip/@diCat)='dp' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)!='no' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='dp' and normalize-space(//ip/@passiveAux)='no' and normalize-space(//ip/@diCat)='dp' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)!='no' or normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='dp' and normalize-space(//ip/@passiveAux)='no' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)!='no' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='dp' and normalize-space(//ip/@passiveAux)='no' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)!='no'">
<xsl:text>
rule {VP option 9linitNegObjVerbRequired - V final, passive, with DP Agent phrase, DP ditrans, no passive Aux}
VP = DP DP_1 V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head type passive&gt; = +
	&lt;V head subject&gt; = &lt;DP&gt;
	&lt;V head indirectobject&gt; = &lt;DP_1&gt;
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;DP_1 head type suffix poss&gt; = -         | only in possessor position
	&lt;DP_1 head type prefix poss&gt; = -
	&lt;DP_1 head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP_1 head type suffix copular&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;DP_1 head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;DP_1 head type prefix&gt;
	&lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP head&gt; == [indirectobject:[head:[type:[negative:+]]]] -&gt;  | if indirect object negative, VP must be
                     [type:[negative:+]]
	&lt;VP option&gt; = 9linitNegObjVerbRequired
</xsl:text>
</xsl:if>

































































	<xsl:if test="normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='dp' and normalize-space(//ip/@passiveAux)='no' and normalize-space(//ip/@diCat)='dp' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//neg/@objVerbRequired)!='no' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='dp' and normalize-space(//ip/@passiveAux)='no' and normalize-space(//ip/@diCat)='dp' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//neg/@objVerbRequired)!='no' or normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='dp' and normalize-space(//ip/@passiveAux)='no' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//neg/@objVerbRequired)!='no' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='dp' and normalize-space(//ip/@passiveAux)='no' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//neg/@objVerbRequired)!='no'">
<xsl:text>
rule {VP option 9linitNegSubjorObjVerbRequired - V final, passive, with DP Agent phrase, DP ditrans, no passive Aux}
VP = DP DP_1 V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head type passive&gt; = +
	&lt;V head subject&gt; = &lt;DP&gt;
	&lt;V head indirectobject&gt; = &lt;DP_1&gt;
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;DP_1 head type suffix poss&gt; = -         | only in possessor position
	&lt;DP_1 head type prefix poss&gt; = -
	&lt;DP_1 head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP_1 head type suffix copular&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;DP_1 head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;DP_1 head type prefix&gt;
	&lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP head&gt; == [subject:[head:[type:[negative:+]]]] -&gt;  | if subject negative, VP must be
                     [type:[negative:+]]
	&lt;VP head&gt; == [indirectobject:[head:[type:[negative:+]]]] -&gt;  | if indirect object negative, VP must be
                     [type:[negative:+]]
	&lt;VP option&gt; = 9linitNegSubjorObjVerbRequired
</xsl:text>
</xsl:if>

































































	<xsl:if test="normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='dp' and normalize-space(//ip/@passiveAux)='no' and normalize-space(//ip/@diCat)='dp' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)='no' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='dp' and normalize-space(//ip/@passiveAux)='no' and normalize-space(//ip/@diCat)='dp' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)='no' or normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='dp' and normalize-space(//ip/@passiveAux)='no' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)='no' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='dp' and normalize-space(//ip/@passiveAux)='no' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)='no'">
<xsl:text>
rule {VP option 9lfin - V final, passive, with DP Agent phrase, DP ditrans, no passive Aux}
VP = DP DP_1 V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head type passive&gt; = +
	&lt;V head subject&gt; = &lt;DP_1&gt;
	&lt;V head indirectobject&gt; = &lt;DP&gt;
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;DP_1 head type suffix poss&gt; = -         | only in possessor position
	&lt;DP_1 head type prefix poss&gt; = -
	&lt;DP_1 head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP_1 head type suffix copular&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;DP_1 head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;DP_1 head type prefix&gt;
	 &lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP option&gt; = 9lfin
</xsl:text>
</xsl:if>

































































	<xsl:if test="normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='dp' and normalize-space(//ip/@passiveAux)='no' and normalize-space(//ip/@diCat)='dp' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//neg/@objVerbRequired)='no' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='dp' and normalize-space(//ip/@passiveAux)='no' and normalize-space(//ip/@diCat)='dp' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//neg/@objVerbRequired)='no' or normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='dp' and normalize-space(//ip/@passiveAux)='no' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//neg/@objVerbRequired)='no' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='dp' and normalize-space(//ip/@passiveAux)='no' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//neg/@objVerbRequired)='no'">
<xsl:text>
rule {VP option 9lfinNegSubjVerbRequired - V final, passive, with DP Agent phrase, DP ditrans, no passive Aux}
VP = DP DP_1 V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head type passive&gt; = +
	&lt;V head subject&gt; = &lt;DP_1&gt;
	&lt;V head indirectobject&gt; = &lt;DP&gt;
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;DP_1 head type suffix poss&gt; = -         | only in possessor position
	&lt;DP_1 head type prefix poss&gt; = -
	&lt;DP_1 head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP_1 head type suffix copular&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;DP_1 head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;DP_1 head type prefix&gt;
	&lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP head&gt; == [subject:[head:[type:[negative:+]]]] -&gt;  | if subject negative, VP must be
                     [type:[negative:+]]
	&lt;VP option&gt; = 9lfinNegSubjVerbRequired
</xsl:text>
</xsl:if>

































































	<xsl:if test="normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='dp' and normalize-space(//ip/@passiveAux)='no' and normalize-space(//ip/@diCat)='dp' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)!='no' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='dp' and normalize-space(//ip/@passiveAux)='no' and normalize-space(//ip/@diCat)='dp' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)!='no' or normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='dp' and normalize-space(//ip/@passiveAux)='no' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)!='no' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='dp' and normalize-space(//ip/@passiveAux)='no' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)!='no'">
<xsl:text>
rule {VP option 9lfinNegObjVerbRequired - V final, passive, with DP Agent phrase, DP ditrans, no passive Aux}
VP = DP DP_1 V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head type passive&gt; = +
	&lt;V head subject&gt; = &lt;DP_1&gt;
	&lt;V head indirectobject&gt; = &lt;DP&gt;
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;DP_1 head type suffix poss&gt; = -         | only in possessor position
	&lt;DP_1 head type prefix poss&gt; = -
	&lt;DP_1 head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP_1 head type suffix copular&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;DP_1 head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;DP_1 head type prefix&gt;
	&lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP head&gt; == [indirectobject:[head:[type:[negative:+]]]] -&gt;  | if indirect object negative, VP must be
                     [type:[negative:+]]
	&lt;VP option&gt; = 9lfinNegObjVerbRequired
</xsl:text>
</xsl:if>

































































	<xsl:if test="normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='dp' and normalize-space(//ip/@passiveAux)='no' and normalize-space(//ip/@diCat)='dp' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//neg/@objVerbRequired)!='no' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='dp' and normalize-space(//ip/@passiveAux)='no' and normalize-space(//ip/@diCat)='dp' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//neg/@objVerbRequired)!='no' or normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='dp' and normalize-space(//ip/@passiveAux)='no' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//neg/@objVerbRequired)!='no' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='dp' and normalize-space(//ip/@passiveAux)='no' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//neg/@objVerbRequired)!='no'">
<xsl:text>
rule {VP option 9lfinNegSubjorObjVerbRequired - V final, passive, with DP Agent phrase, DP ditrans, no passive Aux}
VP = DP DP_1 V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head type passive&gt; = +
	&lt;V head subject&gt; = &lt;DP_1&gt;
	&lt;V head indirectobject&gt; = &lt;DP&gt;
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;DP_1 head type suffix poss&gt; = -         | only in possessor position
	&lt;DP_1 head type prefix poss&gt; = -
	&lt;DP_1 head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP_1 head type suffix copular&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;DP_1 head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;DP_1 head type prefix&gt;
	&lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP head&gt; == [subject:[head:[type:[negative:+]]]] -&gt;  | if subject negative, VP must be
                     [type:[negative:+]]
	&lt;VP head&gt; == [indirectobject:[head:[type:[negative:+]]]] -&gt;  | if indirect object negative, VP must be
                     [type:[negative:+]]
	&lt;VP option&gt; = 9lfinNegSubjorObjVerbRequired
</xsl:text>
</xsl:if>

































































	<xsl:if test="normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='dp' and normalize-space(//ip/@passiveAux)='yes' and normalize-space(//neg/@subjVerbRequired)='no' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='dp' and normalize-space(//ip/@passiveAux)='yes' and normalize-space(//neg/@subjVerbRequired)='no'">
<xsl:text>
rule {VP option 9m - V initial, passive, with DP Agent phrase, passive Aux}
VP = V DP
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head type passive&gt; = +
	&lt;V head subject&gt; = &lt;DP&gt;
	&lt;VP head type auxiliary&gt; = +
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;V head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;DP head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;DP head type suffix&gt;
	 &lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP option&gt; = 9m
</xsl:text>
</xsl:if>

























	<xsl:if test="normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='dp' and normalize-space(//ip/@passiveAux)='yes' and normalize-space(//neg/@subjVerbRequired)='yes' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='dp' and normalize-space(//ip/@passiveAux)='yes' and normalize-space(//neg/@subjVerbRequired)='yes'">
<xsl:text>
rule {VP option 9mNegSubjVerbRequired - V initial, passive, with DP Agent phrase, passive Aux}
VP = V DP
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head type passive&gt; = +
	&lt;V head subject&gt; = &lt;DP&gt;
	&lt;VP head type auxiliary&gt; = +
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;V head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;DP head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;DP head type suffix&gt;
	 &lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP head&gt; == [subject:[head:[type:[negative:+]]]] -&gt;  | if subject negative, VP must be
                     [type:[negative:+]]
	&lt;VP option&gt; = 9mNegSubjVerbRequired
</xsl:text>
</xsl:if>

























	<xsl:if test="normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='dp' and normalize-space(//ip/@passiveAux)='yes' and normalize-space(//ip/@diCat)='dp' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)='no' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='dp' and normalize-space(//ip/@passiveAux)='yes' and normalize-space(//ip/@diCat)='dp' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)='no' or normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='dp' and normalize-space(//ip/@passiveAux)='yes' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)='no' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='dp' and normalize-space(//ip/@passiveAux)='yes' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)='no'">
<xsl:text>
rule {VP option 9minit - V initial, passive, with DP Agent phrase, DP ditrans, passive Aux}
VP = V DP DP_1
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head type passive&gt; = +
	&lt;V head subject&gt; = &lt;DP&gt;
	&lt;V head indirectobject&gt; = &lt;DP_1&gt;
	&lt;VP head type auxiliary&gt; = +
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;DP_1 head type suffix poss&gt; = -         | only in possessor position
	&lt;DP_1 head type prefix poss&gt; = -
	&lt;DP_1 head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP_1 head type suffix copular&gt; = -
	&lt;V head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;DP_1 head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;DP_1 head type suffix&gt;
	 &lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP option&gt; = 9minit
</xsl:text>
</xsl:if>

































































	<xsl:if test="normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='dp' and normalize-space(//ip/@passiveAux)='yes' and normalize-space(//ip/@diCat)='dp' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//neg/@objVerbRequired)='no' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='dp' and normalize-space(//ip/@passiveAux)='yes' and normalize-space(//ip/@diCat)='dp' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//neg/@objVerbRequired)='no' or normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='dp' and normalize-space(//ip/@passiveAux)='yes' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//neg/@objVerbRequired)='no' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='dp' and normalize-space(//ip/@passiveAux)='yes' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//neg/@objVerbRequired)='no'">
<xsl:text>
rule {VP option 9minitNegSubjVerbRequired - V initial, passive, with DP Agent phrase, DP ditrans, passive Aux}
VP = V DP DP_1
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head type passive&gt; = +
	&lt;V head subject&gt; = &lt;DP&gt;
	&lt;V head indirectobject&gt; = &lt;DP_1&gt;
	&lt;VP head type auxiliary&gt; = +
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;DP_1 head type suffix poss&gt; = -         | only in possessor position
	&lt;DP_1 head type prefix poss&gt; = -
	&lt;DP_1 head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP_1 head type suffix copular&gt; = -
	&lt;V head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;DP_1 head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;DP_1 head type suffix&gt;
	&lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP head&gt; == [subject:[head:[type:[negative:+]]]] -&gt;  | if subject negative, VP must be
                     [type:[negative:+]]
	&lt;VP option&gt; = 9minitNegSubjVerbRequired
</xsl:text>
</xsl:if>

































































	<xsl:if test="normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='dp' and normalize-space(//ip/@passiveAux)='yes' and normalize-space(//ip/@diCat)='dp' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)!='no' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='dp' and normalize-space(//ip/@passiveAux)='yes' and normalize-space(//ip/@diCat)='dp' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)!='no' or normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='dp' and normalize-space(//ip/@passiveAux)='yes' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)!='no' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='dp' and normalize-space(//ip/@passiveAux)='yes' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)!='no'">
<xsl:text>
rule {VP option 9minitNegObjVerbRequired - V initial, passive, with DP Agent phrase, DP ditrans, passive Aux}
VP = V DP DP_1
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head type passive&gt; = +
	&lt;V head subject&gt; = &lt;DP&gt;
	&lt;V head indirectobject&gt; = &lt;DP_1&gt;
	&lt;VP head type auxiliary&gt; = +
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;DP_1 head type suffix poss&gt; = -         | only in possessor position
	&lt;DP_1 head type prefix poss&gt; = -
	&lt;DP_1 head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP_1 head type suffix copular&gt; = -
	&lt;V head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;DP_1 head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;DP_1 head type suffix&gt;
	&lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP head&gt; == [indirectobject:[head:[type:[negative:+]]]] -&gt;  | if indirect object negative, VP must be
                     [type:[negative:+]]
	&lt;VP option&gt; = 9minitNegObjVerbRequired
</xsl:text>
</xsl:if>

































































	<xsl:if test="normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='dp' and normalize-space(//ip/@passiveAux)='yes' and normalize-space(//ip/@diCat)='dp' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//neg/@objVerbRequired)!='no' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='dp' and normalize-space(//ip/@passiveAux)='yes' and normalize-space(//ip/@diCat)='dp' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//neg/@objVerbRequired)!='no' or normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='dp' and normalize-space(//ip/@passiveAux)='yes' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//neg/@objVerbRequired)!='no' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='dp' and normalize-space(//ip/@passiveAux)='yes' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//neg/@objVerbRequired)!='no'">
<xsl:text>
rule {VP option 9minitNegSubjorObjVerbRequired - V initial, passive, with DP Agent phrase, DP ditrans, passive Aux}
VP = V DP DP_1
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head type passive&gt; = +
	&lt;V head subject&gt; = &lt;DP&gt;
	&lt;V head indirectobject&gt; = &lt;DP_1&gt;
	&lt;VP head type auxiliary&gt; = +
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;DP_1 head type suffix poss&gt; = -         | only in possessor position
	&lt;DP_1 head type prefix poss&gt; = -
	&lt;DP_1 head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP_1 head type suffix copular&gt; = -
	&lt;V head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;DP_1 head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;DP_1 head type suffix&gt;
	&lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP head&gt; == [subject:[head:[type:[negative:+]]]] -&gt;  | if subject negative, VP must be
                     [type:[negative:+]]
	&lt;VP head&gt; == [indirectobject:[head:[type:[negative:+]]]] -&gt;  | if indirect object negative, VP must be
                     [type:[negative:+]]
	&lt;VP option&gt; = 9minitNegSubjorObjVerbRequired
</xsl:text>
</xsl:if>

































































	<xsl:if test="normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='dp' and normalize-space(//ip/@passiveAux)='yes' and normalize-space(//ip/@diCat)='dp' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)='no' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='dp' and normalize-space(//ip/@passiveAux)='yes' and normalize-space(//ip/@diCat)='dp' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)='no' or normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='dp' and normalize-space(//ip/@passiveAux)='yes' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)='no' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='dp' and normalize-space(//ip/@passiveAux)='yes' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)='no'">
<xsl:text>
rule {VP option 9mfin - V initial, passive, with DP Agent phrase, DP ditrans, passive Aux}
VP = V DP DP_1
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head type passive&gt; = +
	&lt;V head subject&gt; = &lt;DP_1&gt;
	&lt;V head indirectobject&gt; = &lt;DP&gt;
	&lt;VP head type auxiliary&gt; = +
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;DP_1 head type suffix poss&gt; = -         | only in possessor position
	&lt;DP_1 head type prefix poss&gt; = -
	&lt;DP_1 head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP_1 head type suffix copular&gt; = -
	&lt;V head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;DP_1 head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;DP_1 head type suffix&gt;
	 &lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP option&gt; = 9mfin
</xsl:text>
</xsl:if>

































































	<xsl:if test="normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='dp' and normalize-space(//ip/@passiveAux)='yes' and normalize-space(//ip/@diCat)='dp' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//neg/@objVerbRequired)='no' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='dp' and normalize-space(//ip/@passiveAux)='yes' and normalize-space(//ip/@diCat)='dp' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//neg/@objVerbRequired)='no' or normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='dp' and normalize-space(//ip/@passiveAux)='yes' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//neg/@objVerbRequired)='no' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='dp' and normalize-space(//ip/@passiveAux)='yes' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//neg/@objVerbRequired)='no'">
<xsl:text>
rule {VP option 9mfinNegSubjVerbRequired - V initial, passive, with DP Agent phrase, DP ditrans, passive Aux}
VP = V DP DP_1
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head type passive&gt; = +
	&lt;V head subject&gt; = &lt;DP_1&gt;
	&lt;V head indirectobject&gt; = &lt;DP&gt;
	&lt;VP head type auxiliary&gt; = +
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;DP_1 head type suffix poss&gt; = -         | only in possessor position
	&lt;DP_1 head type prefix poss&gt; = -
	&lt;DP_1 head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP_1 head type suffix copular&gt; = -
	&lt;V head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;DP_1 head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;DP_1 head type suffix&gt;
	&lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP head&gt; == [subject:[head:[type:[negative:+]]]] -&gt;  | if subject negative, VP must be
                     [type:[negative:+]]
	&lt;VP option&gt; = 9mfinNegSubjVerbRequired
</xsl:text>
</xsl:if>

































































	<xsl:if test="normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='dp' and normalize-space(//ip/@passiveAux)='nyes' and normalize-space(//ip/@diCat)='dp' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)!='no' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='dp' and normalize-space(//ip/@passiveAux)='yes' and normalize-space(//ip/@diCat)='dp' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)!='no' or normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='dp' and normalize-space(//ip/@passiveAux)='yes' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)!='no' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='dp' and normalize-space(//ip/@passiveAux)='yes' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)!='no'">
<xsl:text>
rule {VP option 9mfinNegObjVerbRequired - V initial, passive, with DP Agent phrase, DP ditrans, passive Aux}
VP = V DP DP_1
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head type passive&gt; = +
	&lt;V head subject&gt; = &lt;DP_1&gt;
	&lt;V head indirectobject&gt; = &lt;DP&gt;
	&lt;VP head type auxiliary&gt; = +
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;DP_1 head type suffix poss&gt; = -         | only in possessor position
	&lt;DP_1 head type prefix poss&gt; = -
	&lt;DP_1 head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP_1 head type suffix copular&gt; = -
	&lt;V head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;DP_1 head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;DP_1 head type suffix&gt;
	&lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP head&gt; == [indirectobject:[head:[type:[negative:+]]]] -&gt;  | if indirect object negative, VP must be
                     [type:[negative:+]]
	&lt;VP option&gt; = 9mfinNegObjVerbRequired
</xsl:text>
</xsl:if>

































































	<xsl:if test="normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='dp' and normalize-space(//ip/@passiveAux)='yes' and normalize-space(//ip/@diCat)='dp' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//neg/@objVerbRequired)!='no' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='dp' and normalize-space(//ip/@passiveAux)='yes' and normalize-space(//ip/@diCat)='dp' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//neg/@objVerbRequired)!='no' or normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='dp' and normalize-space(//ip/@passiveAux)='yes' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//neg/@objVerbRequired)!='no' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='dp' and normalize-space(//ip/@passiveAux)='yes' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//neg/@objVerbRequired)!='no'">
<xsl:text>
rule {VP option 9mfinNegSubjorObjVerbRequired - V initial, passive, with DP Agent phrase, DP ditrans, passive Aux}
VP = V DP DP_1
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head type passive&gt; = +
	&lt;V head subject&gt; = &lt;DP_1&gt;
	&lt;V head indirectobject&gt; = &lt;DP&gt;
	&lt;VP head type auxiliary&gt; = +
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;DP_1 head type suffix poss&gt; = -         | only in possessor position
	&lt;DP_1 head type prefix poss&gt; = -
	&lt;DP_1 head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP_1 head type suffix copular&gt; = -
	&lt;V head type comma&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;VP head type comma&gt; &lt;= &lt;DP_1 head type comma&gt;
	&lt;VP head type suffix&gt; &lt;= &lt;DP_1 head type suffix&gt;
	&lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP head&gt; == [subject:[head:[type:[negative:+]]]] -&gt;  | if subject negative, VP must be
                     [type:[negative:+]]
	&lt;VP head&gt; == [indirectobject:[head:[type:[negative:+]]]] -&gt;  | if indirect object negative, VP must be
                     [type:[negative:+]]
	&lt;VP option&gt; = 9mfinNegSubjorObjVerbRequired
</xsl:text>
</xsl:if>

































































	<xsl:if test="normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='dp' and normalize-space(//ip/@passiveAux)='yes' and normalize-space(//neg/@subjVerbRequired)='no' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='dp' and normalize-space(//ip/@passiveAux)='yes' and normalize-space(//neg/@subjVerbRequired)='no'">
<xsl:text>
rule {VP option 9n - V final, passive, with DP Agent phrase, passive Aux}
VP = DP V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head type passive&gt; = +
	&lt;V head subject&gt; = &lt;DP&gt;
	&lt;VP head type auxiliary&gt; = +
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;DP head type prefix&gt;
	 &lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP option&gt; = 9n
</xsl:text>
</xsl:if>

























	<xsl:if test="normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='dp' and normalize-space(//ip/@passiveAux)='yes' and normalize-space(//neg/@subjVerbRequired)='yes' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='dp' and normalize-space(//ip/@passiveAux)='yes' and normalize-space(//neg/@subjVerbRequired)='yes'">
<xsl:text>
rule {VP option 9nNegSubjVerbRequired - V final, passive, with DP Agent phrase, passive Aux}
VP = DP V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head type passive&gt; = +
	&lt;V head subject&gt; = &lt;DP&gt;
	&lt;VP head type auxiliary&gt; = +
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;DP head type prefix&gt;
	 &lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP head&gt; == [subject:[head:[type:[negative:+]]]] -&gt;  | if subject negative, VP must be
                     [type:[negative:+]]
	&lt;VP option&gt; = 9nNegSubjVerbRequired
</xsl:text>
</xsl:if>

























	<xsl:if test="normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='dp' and normalize-space(//ip/@passiveAux)='yes' and normalize-space(//ip/@diCat)='dp' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)='no' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='dp' and normalize-space(//ip/@passiveAux)='yes' and normalize-space(//ip/@diCat)='dp' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)='no' or normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='dp' and normalize-space(//ip/@passiveAux)='yes' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)='no' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='dp' and normalize-space(//ip/@passiveAux)='yes' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)='no'">
<xsl:text>
rule {VP option 9ninit - V final, passive, with DP Agent phrase, DP ditrans, passive Aux}
VP = DP DP_1 V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head type passive&gt; = +
	&lt;V head subject&gt; = &lt;DP&gt;
	&lt;V head indirectobject&gt; = &lt;DP_1&gt;
	&lt;VP head type auxiliary&gt; = +
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;DP_1 head type suffix poss&gt; = -         | only in possessor position
	&lt;DP_1 head type prefix poss&gt; = -
	&lt;DP_1 head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP_1 head type suffix copular&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;DP_1 head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;DP_1 head type prefix&gt;
	 &lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP option&gt; = 9ninit
</xsl:text>
</xsl:if>

































































	<xsl:if test="normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='dp' and normalize-space(//ip/@passiveAux)='yes' and normalize-space(//ip/@diCat)='dp' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//neg/@objVerbRequired)='no' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='dp' and normalize-space(//ip/@passiveAux)='yes' and normalize-space(//ip/@diCat)='dp' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//neg/@objVerbRequired)='no' or normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='dp' and normalize-space(//ip/@passiveAux)='yes' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//neg/@objVerbRequired)='no' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='dp' and normalize-space(//ip/@passiveAux)='yes' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//neg/@objVerbRequired)='no'">
<xsl:text>
rule {VP option 9ninitNegSubjVerbRequired - V final, passive, with DP Agent phrase, DP ditrans, passive Aux}
VP = DP DP_1 V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head type passive&gt; = +
	&lt;V head subject&gt; = &lt;DP&gt;
	&lt;V head indirectobject&gt; = &lt;DP_1&gt;
	&lt;VP head type auxiliary&gt; = +
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;DP_1 head type suffix poss&gt; = -         | only in possessor position
	&lt;DP_1 head type prefix poss&gt; = -
	&lt;DP_1 head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP_1 head type suffix copular&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;DP_1 head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;DP_1 head type prefix&gt;
	&lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP head&gt; == [subject:[head:[type:[negative:+]]]] -&gt;  | if subject negative, VP must be
                     [type:[negative:+]]
	&lt;VP option&gt; = 9ninitNegSubjVerbRequired
</xsl:text>
</xsl:if>

































































	<xsl:if test="normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='dp' and normalize-space(//ip/@passiveAux)='yes' and normalize-space(//ip/@diCat)='dp' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)!='no' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='dp' and normalize-space(//ip/@passiveAux)='yes' and normalize-space(//ip/@diCat)='dp' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)!='no' or normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='dp' and normalize-space(//ip/@passiveAux)='yes' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)!='no' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='dp' and normalize-space(//ip/@passiveAux)='yes' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)!='no'">
<xsl:text>
rule {VP option 9ninitNegObjVerbRequired - V final, passive, with DP Agent phrase, DP ditrans, passive Aux}
VP = DP DP_1 V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head type passive&gt; = +
	&lt;V head subject&gt; = &lt;DP&gt;
	&lt;V head indirectobject&gt; = &lt;DP_1&gt;
	&lt;VP head type auxiliary&gt; = +
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;DP_1 head type suffix poss&gt; = -         | only in possessor position
	&lt;DP_1 head type prefix poss&gt; = -
	&lt;DP_1 head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP_1 head type suffix copular&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;DP_1 head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;DP_1 head type prefix&gt;
	&lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP head&gt; == [indirectobject:[head:[type:[negative:+]]]] -&gt;  | if indirect object negative, VP must be
                     [type:[negative:+]]
	&lt;VP option&gt; = 9ninitNegObjVerbRequired
</xsl:text>
</xsl:if>

































































	<xsl:if test="normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='dp' and normalize-space(//ip/@passiveAux)='yes' and normalize-space(//ip/@diCat)='dp' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//neg/@objVerbRequired)!='no' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='dp' and normalize-space(//ip/@passiveAux)='yes' and normalize-space(//ip/@diCat)='dp' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//neg/@objVerbRequired)!='no' or normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='dp' and normalize-space(//ip/@passiveAux)='yes' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//neg/@objVerbRequired)!='no' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='dp' and normalize-space(//ip/@passiveAux)='yes' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//neg/@objVerbRequired)!='no'">
<xsl:text>
rule {VP option 9ninitNegSubjorObjVerbRequired - V final, passive, with DP Agent phrase, DP ditrans, passive Aux}
VP = DP DP_1 V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head type passive&gt; = +
	&lt;V head subject&gt; = &lt;DP&gt;
	&lt;V head indirectobject&gt; = &lt;DP_1&gt;
	&lt;VP head type auxiliary&gt; = +
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;DP_1 head type suffix poss&gt; = -         | only in possessor position
	&lt;DP_1 head type prefix poss&gt; = -
	&lt;DP_1 head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP_1 head type suffix copular&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;DP_1 head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;DP_1 head type prefix&gt;
	&lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP head&gt; == [subject:[head:[type:[negative:+]]]] -&gt;  | if subject negative, VP must be
                     [type:[negative:+]]
	&lt;VP head&gt; == [indirectobject:[head:[type:[negative:+]]]] -&gt;  | if indirect object negative, VP must be
                     [type:[negative:+]]
	&lt;VP option&gt; = 9ninitNegSubjorObjVerbRequired
</xsl:text>
</xsl:if>

































































	<xsl:if test="normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='dp' and normalize-space(//ip/@passiveAux)='yes' and normalize-space(//ip/@diCat)='dp' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)='no' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='dp' and normalize-space(//ip/@passiveAux)='yes' and normalize-space(//ip/@diCat)='dp' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)='no' or normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='dp' and normalize-space(//ip/@passiveAux)='yes' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)='no' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='dp' and normalize-space(//ip/@passiveAux)='yes' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)='no'">
<xsl:text>
rule {VP option 9nfin - V final, passive, with DP Agent phrase, DP ditrans, passive Aux}
VP = DP DP_1 V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head type passive&gt; = +
	&lt;V head subject&gt; = &lt;DP_1&gt;
	&lt;V head indirectobject&gt; = &lt;DP&gt;
	&lt;VP head type auxiliary&gt; = +
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;DP_1 head type suffix poss&gt; = -         | only in possessor position
	&lt;DP_1 head type prefix poss&gt; = -
	&lt;DP_1 head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP_1 head type suffix copular&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;DP_1 head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;DP_1 head type prefix&gt;
	 &lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP option&gt; = 9nfin
</xsl:text>
</xsl:if>

































































	<xsl:if test="normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='dp' and normalize-space(//ip/@passiveAux)='yes' and normalize-space(//ip/@diCat)='dp' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//neg/@objVerbRequired)='no' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='dp' and normalize-space(//ip/@passiveAux)='yes' and normalize-space(//ip/@diCat)='dp' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//neg/@objVerbRequired)='no' or normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='dp' and normalize-space(//ip/@passiveAux)='yes' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//neg/@objVerbRequired)='no' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='dp' and normalize-space(//ip/@passiveAux)='yes' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//neg/@objVerbRequired)='no'">
<xsl:text>
rule {VP option 9nfinNegSubjVerbRequired - V final, passive, with DP Agent phrase, DP ditrans, passive Aux}
VP = DP DP_1 V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head type passive&gt; = +
	&lt;V head subject&gt; = &lt;DP_1&gt;
	&lt;V head indirectobject&gt; = &lt;DP&gt;
	&lt;VP head type auxiliary&gt; = +
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;DP_1 head type suffix poss&gt; = -         | only in possessor position
	&lt;DP_1 head type prefix poss&gt; = -
	&lt;DP_1 head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP_1 head type suffix copular&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;DP_1 head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;DP_1 head type prefix&gt;
	&lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP head&gt; == [subject:[head:[type:[negative:+]]]] -&gt;  | if subject negative, VP must be
                     [type:[negative:+]]
	&lt;VP option&gt; = 9nfinNegSubjVerbRequired
</xsl:text>
</xsl:if>

































































	<xsl:if test="normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='dp' and normalize-space(//ip/@passiveAux)='yes' and normalize-space(//ip/@diCat)='dp' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)!='no' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='dp' and normalize-space(//ip/@passiveAux)='yes' and normalize-space(//ip/@diCat)='dp' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)!='no' or normalize-space(//typology/@wordOrder)='SVO' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='dp' and normalize-space(//ip/@passiveAux)='yes' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)!='no' or normalize-space(//typology/@wordOrder)='VOS' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='dp' and normalize-space(//ip/@passiveAux)='yes' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='no' and normalize-space(//neg/@objVerbRequired)!='no'">
<xsl:text>
rule {VP option 9nfinNegObjVerbRequired - V final, passive, with DP Agent phrase, DP ditrans, passive Aux}
VP = DP DP_1 V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head type passive&gt; = +
	&lt;V head subject&gt; = &lt;DP_1&gt;
	&lt;V head indirectobject&gt; = &lt;DP&gt;
	&lt;VP head type auxiliary&gt; = +
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;DP_1 head type suffix poss&gt; = -         | only in possessor position
	&lt;DP_1 head type prefix poss&gt; = -
	&lt;DP_1 head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP_1 head type suffix copular&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;DP_1 head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;DP_1 head type prefix&gt;
	&lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP head&gt; == [indirectobject:[head:[type:[negative:+]]]] -&gt;  | if indirect object negative, VP must be
                     [type:[negative:+]]
	&lt;VP option&gt; = 9nfinNegObjVerbRequired
</xsl:text>
</xsl:if>

































































	<xsl:if test="normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='dp' and normalize-space(//ip/@passiveAux)='yes' and normalize-space(//ip/@diCat)='dp' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//neg/@objVerbRequired)!='no' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='dp' and normalize-space(//ip/@passiveAux)='yes' and normalize-space(//ip/@diCat)='dp' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//neg/@objVerbRequired)!='no' or normalize-space(//typology/@wordOrder)='SOV' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='dp' and normalize-space(//ip/@passiveAux)='yes' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//neg/@objVerbRequired)!='no' or normalize-space(//typology/@wordOrder)='OVS' and normalize-space(//ip/@passive)='yes' and normalize-space(//ip/@passiveAgent)='yes' and normalize-space(//ip/@passiveAgentCat)='dp' and normalize-space(//ip/@passiveAux)='yes' and normalize-space(//ip/@diCat)='both' and normalize-space(//neg/@subjVerbRequired)='yes' and normalize-space(//neg/@objVerbRequired)!='no'">
<xsl:text>
rule {VP option 9nfinNegSubjorObjVerbRequired - V final, passive, with DP Agent phrase, DP ditrans, passive Aux}
VP = DP DP_1 V
	&lt;VP head&gt; = &lt;V head&gt;
	&lt;V head type passive&gt; = +
	&lt;V head subject&gt; = &lt;DP_1&gt;
	&lt;V head indirectobject&gt; = &lt;DP&gt;
	&lt;VP head type auxiliary&gt; = +
	&lt;DP head type suffix poss&gt; = -         | only in possessor position
	&lt;DP head type prefix poss&gt; = -
	&lt;DP head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP head type suffix copular&gt; = -
	&lt;DP_1 head type suffix poss&gt; = -         | only in possessor position
	&lt;DP_1 head type prefix poss&gt; = -
	&lt;DP_1 head type prefix copular&gt; = -    | only in no V/Aux copulars
	&lt;DP_1 head type suffix copular&gt; = -
	&lt;DP head type comma&gt; = -
	&lt;DP_1 head type comma&gt; = -
	&lt;VP head type prefix&gt; &lt;= &lt;DP_1 head type prefix&gt;
	&lt;VP head fronted&gt; == ~[cat:FocusP]
	&lt;VP head&gt; == [subject:[head:[type:[negative:+]]]] -&gt;  | if subject negative, VP must be
                     [type:[negative:+]]
	&lt;VP head&gt; == [indirectobject:[head:[type:[negative:+]]]] -&gt;  | if indirect object negative, VP must be
                     [type:[negative:+]]
	&lt;VP option&gt; = 9nfinNegSubjorObjVerbRequired
</xsl:text>
</xsl:if>

































































</xsl:template>
</xsl:stylesheet>