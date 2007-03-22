<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/" mode="qp">
	<xsl:text>
rule {QP option 0 - no modifiers}
QP = Q
	&lt;QP head&gt; = &lt;Q head&gt;
	&lt;QP option&gt; = 0
</xsl:text>
	<xsl:if test="//qp/@degree='yes' and //qp/@degreePos='before' or //qp/@degree='yes' and //qp/@degreePos='either' or //qp/@degree='yes' and //qp/@degreePos='eitherOrBoth' or //qp/@degree='yes' and //qp/@degreePos='beforeOrBoth'">
<xsl:text>
rule {QP option 1 - modifiers initial}
QP = Deg Q
	&lt;QP head&gt; = &lt;Q head&gt;
	&lt;Deg head type modifies_Q&gt; = +
	&lt;Deg head type QP-initial&gt; = +
	&lt;QP head type prefix&gt; &lt;= &lt;Deg head type prefix&gt;
	&lt;QP option&gt; = 1
</xsl:text>
</xsl:if>

















	<xsl:if test="//qp/@degree='yes' and //qp/@degreePos='after' or //qp/@degree='yes' and //qp/@degreePos='either' or //qp/@degree='yes' and //qp/@degreePos='eitherOrBoth' or //qp/@degree='yes' and //qp/@degreePos='afterOrBoth'">
<xsl:text>
rule {QP option 2 - modifiers final}
QP = Q Deg
	&lt;QP head&gt; = &lt;Q head&gt;
	&lt;Deg head type modifies_Q&gt; = +
	&lt;Deg head type QP-final&gt;   = +
	&lt;QP head type suffix&gt; &lt;= &lt;Deg head type suffix&gt;
	&lt;QP option&gt; = 2
</xsl:text>
</xsl:if>

















	<xsl:if test="//qp/@degree='yes' and //qp/@degreePos='both' or //qp/@degree='yes' and //qp/@degreePos='beforeOrBoth' or //qp/@degree='yes' and //qp/@degreePos='eitherOrBoth' or //qp/@degree='yes' and //qp/@degreePos='afterOrBoth'">
<xsl:text>
rule {QP option 3 - modifiers both sides}
QP = Deg_1 Q Deg_2
	&lt;QP head&gt; = &lt;Q head&gt;
	&lt;Deg_1 head type modifies_Q&gt; = +
	&lt;Deg_2 head type modifies_Q&gt; = +
	&lt;Deg_1 head type QP-initial&gt; = +
	&lt;Deg_2 head type QP-final&gt;   = +
	&lt;QP head type prefix&gt; &lt;= &lt;Deg_1 head type prefix&gt;
	&lt;QP head type suffix&gt; &lt;= &lt;Deg_2 head type suffix&gt;
</xsl:text>
</xsl:if>

















	<xsl:if test="//qp/@cardinalHeadPos='before'">
<xsl:text>
rule {QP option Num0i - no modifiers, head initial}
QP = Num (Conj) (Num_1 (Conj_1) (Num_2 (Num_3 (Num_4 (Num_5)))))
	&lt;QP head&gt; = &lt;Num head&gt;
	&lt;Conj head type conjoins_DP&gt; = +
	&lt;Conj_1 head type conjoins_DP&gt; = +
	&lt;QP option&gt; = Num0i
</xsl:text>
</xsl:if>



	<xsl:if test="//qp/@cardinalHeadPos='after'">
<xsl:text>
rule {QP option Num0f - no modifiers, head final}
QP = (((((Num_5) Num_4) Num_3) Num_2) (Conj_1) Num_1) (Conj) Num
	&lt;QP head&gt; = &lt;Num head&gt;
	&lt;Conj head type conjoins_DP&gt; = +
	&lt;Conj_1 head type conjoins_DP&gt; = +
	&lt;QP option&gt; = Num0f
</xsl:text>
</xsl:if>



	<xsl:if test="//qp/@cardinalHead='before' and //qp/@ordinalPos='before' or //qp/@cardinalHead='before' and //qp/@ordinalPos='beforeOrBoth' or //qp/@cardinalHead='before' and //qp/@ordinalPos='either' or //qp/@cardinalHead='before' and //qp/@ordinalPos='eitherOrBoth'">
<xsl:text>
rule {QP option Num1i - modifiers initial, head initial}
QP = Adj Num (Conj) (Num_1 (Conj_1) (Num_2 (Num_3 (Num_4 (Num_5)))))
	&lt;QP head&gt; = &lt;Num head&gt;
	&lt;Adj head type ordinal&gt; = +
	&lt;Adj head type QP-initial&gt; = +
	&lt;Conj head type conjoins_DP&gt; = +
	&lt;Conj_1 head type conjoins_DP&gt; = +
	&lt;QP option&gt; = Num1i
</xsl:text>
</xsl:if>

















	<xsl:if test="//qp/@cardinalHead='after' and //qp/@ordinalPos='before' or //qp/@cardinalHead='after' and //qp/@ordinalPos='beforeOrBoth' or //qp/@cardinalHead='after' and //qp/@ordinalPos='either' or //qp/@cardinalHead='after' and //qp/@ordinalPos='eitherOrBoth'">
<xsl:text>
rule {QP option Num1f - modifiers initial, head final}
QP = Adj (((((Num_5) Num_4) Num_3) Num_2) (Conj_1) Num_1) (Conj) Num
	&lt;QP head&gt; = &lt;Num head&gt;
	&lt;Adj head type ordinal&gt; = +
	&lt;Adj head type QP-initial&gt; = +
	&lt;Conj head type conjoins_DP&gt; = +
	&lt;Conj_1 head type conjoins_DP&gt; = +
	&lt;QP option&gt; = Num1f
</xsl:text>
</xsl:if>

















	<xsl:if test="//qp/@cardinalHead='before' and //qp/@ordinalPos='after' or //qp/@cardinalHead='before' and //qp/@ordinalPos='afterOrBoth' or //qp/@cardinalHead='before' and //qp/@ordinalPos='either' or //qp/@cardinalHead='before' and //qp/@ordinalPos='eitherOrBoth'">
<xsl:text>
rule {QP option Num2i - modifiers final, head initial}
QP = Num (Conj) (Num_1 (Conj_1) (Num_2 (Num_3 (Num_4 (Num_5))))) Adj
	&lt;QP head&gt; = &lt;Num head&gt;
	&lt;Adj head type ordinal&gt; = +
	&lt;Adj head type QP-final&gt; = +
	&lt;Conj head type conjoins_DP&gt; = +
	&lt;Conj_1 head type conjoins_DP&gt; = +
	&lt;QP option&gt; = Num2i
</xsl:text>
</xsl:if>

















	<xsl:if test="//qp/@cardinalHead='after' and //qp/@ordinalPos='after' or //qp/@cardinalHead='after' and //qp/@ordinalPos='afterOrBoth' or //qp/@cardinalHead='after' and //qp/@ordinalPos='either' or //qp/@cardinalHead='after' and //qp/@ordinalPos='eitherOrBoth'">
<xsl:text>
rule {QP option Num2f - modifiers final, head final}
QP = (((((Num_5) Num_4) Num_3) Num_2) (Conj_1) Num_1) (Conj) Num Adj
	&lt;QP head&gt; = &lt;Num head&gt;
	&lt;Adj head type ordinal&gt; = +
	&lt;Adj head type QP-final&gt; = +
	&lt;Conj head type conjoins_DP&gt; = +
	&lt;Conj_1 head type conjoins_DP&gt; = +
	&lt;QP option&gt; = Num2f
</xsl:text>
</xsl:if>

















	<xsl:if test="//qp/@cardinalHead='before' and //qp/@ordinalPos='both' or //qp/@cardinalHead='before' and //qp/@ordinalPos='afterOrBoth' or //qp/@cardinalHead='before' and //qp/@ordinalPos='beforeOrBoth' or //qp/@cardinalHead='before' and //qp/@ordinalPos='eitherOrBoth'">
<xsl:text>
rule {QP option Num3i - modifiers both sides, head initial}
QP = Adj Num (Conj) (Num_1 (Conj_1) (Num_2 (Num_3 (Num_4 (Num_5))))) Adj_1
	&lt;QP head&gt; = &lt;Num head&gt;
	&lt;Adj head type ordinal&gt; = +
	&lt;Adj_1 head type ordinal&gt; = +
	&lt;Adj head type QP-initial&gt; = +
	&lt;Adj_1 head type QP-final&gt; = +
	&lt;Conj head type conjoins_DP&gt; = +
	&lt;Conj_1 head type conjoins_DP&gt; = +
	&lt;QP option&gt; = Num3i
</xsl:text>
</xsl:if>

















	<xsl:if test="//qp/@cardinalHead='after' and //qp/@ordinalPos='both' or //qp/@cardinalHead='after' and //qp/@ordinalPos='afterOrBoth' or //qp/@cardinalHead='after' and //qp/@ordinalPos='beforeOrBoth' or //qp/@cardinalHead='after' and //qp/@ordinalPos='eitherOrBoth'">
<xsl:text>
rule {QP option Num3f - modifiers both sides, head final}
QP = Adj (((((Num_5) Num_4) Num_3) Num_2) (Conj_1) Num_1) (Conj) Num Adj_1
	&lt;QP head&gt; = &lt;Num head&gt;
	&lt;Adj head type ordinal&gt; = +
	&lt;Adj_1 head type ordinal&gt; = +
	&lt;Adj head type QP-initial&gt; = +
	&lt;Adj_1 head type QP-final&gt; = +
	&lt;Conj head type conjoins_DP&gt; = +
	&lt;Conj_1 head type conjoins_DP&gt; = +

	&lt;QP option&gt; = Num3f
</xsl:text>
</xsl:if>

















</xsl:template>
</xsl:stylesheet>