<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/" mode="comp">
	<section1 id="sComp">
		<secTitle>Complement Clauses</secTitle>
		<p>
<xsl:text>There are various types of embedded clauses which are complements of main verbs. These represent the argument structure of the verb as well as its syntactic subcategorization.  Therefore, there is some degree of cross-linguistic similarity in the types of clausal complements the verbs subcategorize for.  Adjectives acting as the predicate of the sentence may also subcategorize for the various types of clausal complements.  Examples of each type of clausal complement will be given in the next section, followed by a discussion of the complementizers and their position in declarative embedded clauses.  See section </xsl:text>
<sectionRef sec="sQues" />
<xsl:text> for similar discussion for questions and section </xsl:text>
<sectionRef sec="sRelCl" />
<xsl:text> for relative clauses.</xsl:text>
</p>
		<section2 id="sCompType">
			<secTitle>Types of Complement Clauses</secTitle>
			<p>
<xsl:text>Each of the following subsections exemplifies a particular subcategorization requirement for a verb (or other category of head - see section </xsl:text>
<sectionRef sec="sAdvCl" />
<xsl:text> for examples of Adverbial Clauses). </xsl:text>
</p>
			<section3 id="sCompTypeFinite">
				<secTitle>A Finite Complement</secTitle>
				<p>
<xsl:text>Verbs which take only a finite complement, with or without a complementizer, include the following examples in English: </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>I believe (that) Jill is my friend</langData>
<xsl:text>, </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>Jill insists (that) she is my friend</langData>
<xsl:text> and </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>I know (that) he likes me</langData>
<xsl:text>.</xsl:text>
</p>
				<p>
<xsl:text>Examples of this type in </xsl:text>
<xsl:value-of select="//language/langName" />
<xsl:text> include:</xsl:text>
</p>
				<example num="xComp.CompType.CompTypeFinite.8">
<xsl:variable name="sExampleValue">
<xsl:value-of select="//comp/finiteExample" />
</xsl:variable>
<xsl:variable name="iExampleLength" select="string-length(//comp/finiteExample)" />
<xsl:choose>
<xsl:when test="$iExampleLength != 0 and $sExampleValue != ' '">
<xsl:call-template name="OutputInterlinearExamples">
<xsl:with-param name="sExamples">
<xsl:value-of select="//comp/finiteExample" />
</xsl:with-param>
<xsl:with-param name="iLength">
<xsl:value-of select="string-length(//comp/finiteExample)" />
</xsl:with-param>
<xsl:with-param name="sExNumber">xComp.CompType.CompTypeFinite.8</xsl:with-param>
<xsl:with-param name="sLetterList">
<xsl:value-of select="$sMasterLetterList" />
</xsl:with-param>
</xsl:call-template>
</xsl:when>
<xsl:otherwise>
<listInterlinear>
<xsl:attribute name="letter">
<xsl:text>xComp.CompType.CompTypeFinite.8.1</xsl:text>
</xsl:attribute>
<lineGroup>
<line>
<langData>
<xsl:attribute name="lang">l<xsl:value-of select="//language/langAbbr" />
</xsl:attribute>ENTER AN EXAMPLE HERE</langData>
</line>
<xsl:call-template name="DoGloss" />
</lineGroup>
<xsl:call-template name="DoFree" />
</listInterlinear>
</xsl:otherwise>
</xsl:choose>
</example>
			</section3>
			<section3 id="sCompFiniteOrNonfiniteIP">
				<secTitle>A Finite or A Nonfinite Complement</secTitle>
				<p>
<xsl:text>Verbs which take either a finite complement, with or without a complementizer, or a nonfinite complement without a complementizer, include the following examples in English: </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>I expect that Joe will come to the party</langData>
<xsl:text> and </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>I expect Joe to come to the party</langData>
<xsl:text>.</xsl:text>
</p>
				<p>
<xsl:text>Examples of this type in </xsl:text>
<xsl:value-of select="//language/langName" />
<xsl:text> include:</xsl:text>
</p>
				<example num="xComp.CompType.CompFiniteOrNonfiniteIP.8">
<xsl:variable name="sExampleValue">
<xsl:value-of select="//comp/finiteOrNonfiniteExample" />
</xsl:variable>
<xsl:variable name="iExampleLength" select="string-length(//comp/finiteOrNonfiniteExample)" />
<xsl:choose>
<xsl:when test="$iExampleLength != 0 and $sExampleValue != ' '">
<xsl:call-template name="OutputInterlinearExamples">
<xsl:with-param name="sExamples">
<xsl:value-of select="//comp/finiteOrNonfiniteExample" />
</xsl:with-param>
<xsl:with-param name="iLength">
<xsl:value-of select="string-length(//comp/finiteOrNonfiniteExample)" />
</xsl:with-param>
<xsl:with-param name="sExNumber">xComp.CompType.CompFiniteOrNonfiniteIP.8</xsl:with-param>
<xsl:with-param name="sLetterList">
<xsl:value-of select="$sMasterLetterList" />
</xsl:with-param>
</xsl:call-template>
</xsl:when>
<xsl:otherwise>
<listInterlinear>
<xsl:attribute name="letter">
<xsl:text>xComp.CompType.CompFiniteOrNonfiniteIP.8.1</xsl:text>
</xsl:attribute>
<lineGroup>
<line>
<langData>
<xsl:attribute name="lang">l<xsl:value-of select="//language/langAbbr" />
</xsl:attribute>ENTER AN EXAMPLE HERE</langData>
</line>
<xsl:call-template name="DoGloss" />
</lineGroup>
<xsl:call-template name="DoFree" />
</listInterlinear>
</xsl:otherwise>
</xsl:choose>
</example>
			</section3>
			<section3 id="sCompTypeNonfiniteIP">
				<secTitle>A Nonfinite Complement</secTitle>
				<p>
<xsl:text>Verbs which take only a nonfinite complement without a complementizer, but the subject may be overt or dropped when it is coreferent with the main clause subject, include the following examples in English: </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>I want to come to the party</langData>
<xsl:text> and </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>I want Joe to come to the party</langData>
<xsl:text>.</xsl:text>
</p>
				<p>
<xsl:text>Examples of this type in </xsl:text>
<xsl:value-of select="//language/langName" />
<xsl:text> include:</xsl:text>
</p>
				<example num="xComp.CompType.CompTypeNonfiniteIP.8">
<xsl:variable name="sExampleValue">
<xsl:value-of select="//comp/nonfiniteExample" />
</xsl:variable>
<xsl:variable name="iExampleLength" select="string-length(//comp/nonfiniteExample)" />
<xsl:choose>
<xsl:when test="$iExampleLength != 0 and $sExampleValue != ' '">
<xsl:call-template name="OutputInterlinearExamples">
<xsl:with-param name="sExamples">
<xsl:value-of select="//comp/nonfiniteExample" />
</xsl:with-param>
<xsl:with-param name="iLength">
<xsl:value-of select="string-length(//comp/nonfiniteExample)" />
</xsl:with-param>
<xsl:with-param name="sExNumber">xComp.CompType.CompTypeNonfiniteIP.8</xsl:with-param>
<xsl:with-param name="sLetterList">
<xsl:value-of select="$sMasterLetterList" />
</xsl:with-param>
</xsl:call-template>
</xsl:when>
<xsl:otherwise>
<listInterlinear>
<xsl:attribute name="letter">
<xsl:text>xComp.CompType.CompTypeNonfiniteIP.8.1</xsl:text>
</xsl:attribute>
<lineGroup>
<line>
<langData>
<xsl:attribute name="lang">l<xsl:value-of select="//language/langAbbr" />
</xsl:attribute>ENTER AN EXAMPLE HERE</langData>
</line>
<xsl:call-template name="DoGloss" />
</lineGroup>
<xsl:call-template name="DoFree" />
</listInterlinear>
</xsl:otherwise>
</xsl:choose>
</example>
			</section3>
			<section3 id="sCompTypeNonfiniteIPPRO">
				<secTitle>A Nonfinite Complement with a Coreferent Subject</secTitle>
				<p>
<xsl:text>Verbs which take only a nonfinite complement without a complementizer, and the subject must be coreferent with the main clause subject and dropped, include the following examples in English: </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>Joe tried to come to the party</langData>
<xsl:text> and </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>I tried to think of more examples</langData>
<xsl:text>.</xsl:text>
</p>
				<p>
<xsl:text>Examples of this type in </xsl:text>
<xsl:value-of select="//language/langName" />
<xsl:text> include:</xsl:text>
</p>
				<example num="xComp.CompType.CompTypeNonfiniteIPPRO.8">
<xsl:variable name="sExampleValue">
<xsl:value-of select="//comp/nonfiniteProDropExample" />
</xsl:variable>
<xsl:variable name="iExampleLength" select="string-length(//comp/nonfiniteProDropExample)" />
<xsl:choose>
<xsl:when test="$iExampleLength != 0 and $sExampleValue != ' '">
<xsl:call-template name="OutputInterlinearExamples">
<xsl:with-param name="sExamples">
<xsl:value-of select="//comp/nonfiniteProDropExample" />
</xsl:with-param>
<xsl:with-param name="iLength">
<xsl:value-of select="string-length(//comp/nonfiniteProDropExample)" />
</xsl:with-param>
<xsl:with-param name="sExNumber">xComp.CompType.CompTypeNonfiniteIPPRO.8</xsl:with-param>
<xsl:with-param name="sLetterList">
<xsl:value-of select="$sMasterLetterList" />
</xsl:with-param>
</xsl:call-template>
</xsl:when>
<xsl:otherwise>
<listInterlinear>
<xsl:attribute name="letter">
<xsl:text>xComp.CompType.CompTypeNonfiniteIPPRO.8.1</xsl:text>
</xsl:attribute>
<lineGroup>
<line>
<langData>
<xsl:attribute name="lang">l<xsl:value-of select="//language/langAbbr" />
</xsl:attribute>ENTER AN EXAMPLE HERE</langData>
</line>
<xsl:call-template name="DoGloss" />
</lineGroup>
<xsl:call-template name="DoFree" />
</listInterlinear>
</xsl:otherwise>
</xsl:choose>
</example>
			</section3>
			<section3 id="sCompTypeNonfiniteCP">
				<secTitle>A Nonfinite Complement with a Complementizer</secTitle>
				<p>
<xsl:text>Verbs which take only a nonfinite complement, but the complementizer 'for' is present when the embedded subject is not coreferent with the main clause subject, include the following examples in English: </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>Joe would hate for Sue to be at the party</langData>
<xsl:text>, </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>Joe hates to dance</langData>
<xsl:text> and </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>I would like to be appreciated</langData>
<xsl:text>.</xsl:text>
</p>
				<p>
<xsl:text>Examples of this type in </xsl:text>
<xsl:value-of select="//language/langName" />
<xsl:text> include:</xsl:text>
</p>
				<example num="xComp.CompType.CompTypeNonfiniteCP.8">
<xsl:variable name="sExampleValue">
<xsl:value-of select="//comp/nonfiniteCPOrProDropExample" />
</xsl:variable>
<xsl:variable name="iExampleLength" select="string-length(//comp/nonfiniteCPOrProDropExample)" />
<xsl:choose>
<xsl:when test="$iExampleLength != 0 and $sExampleValue != ' '">
<xsl:call-template name="OutputInterlinearExamples">
<xsl:with-param name="sExamples">
<xsl:value-of select="//comp/nonfiniteCPOrProDropExample" />
</xsl:with-param>
<xsl:with-param name="iLength">
<xsl:value-of select="string-length(//comp/nonfiniteCPOrProDropExample)" />
</xsl:with-param>
<xsl:with-param name="sExNumber">xComp.CompType.CompTypeNonfiniteCP.8</xsl:with-param>
<xsl:with-param name="sLetterList">
<xsl:value-of select="$sMasterLetterList" />
</xsl:with-param>
</xsl:call-template>
</xsl:when>
<xsl:otherwise>
<listInterlinear>
<xsl:attribute name="letter">
<xsl:text>xComp.CompType.CompTypeNonfiniteCP.8.1</xsl:text>
</xsl:attribute>
<lineGroup>
<line>
<langData>
<xsl:attribute name="lang">l<xsl:value-of select="//language/langAbbr" />
</xsl:attribute>ENTER AN EXAMPLE HERE</langData>
</line>
<xsl:call-template name="DoGloss" />
</lineGroup>
<xsl:call-template name="DoFree" />
</listInterlinear>
</xsl:otherwise>
</xsl:choose>
</example>
			</section3>
			<section3 id="sCompTypeObject">
				<secTitle>An Object plus a Complement Clause</secTitle>
				<p>
<xsl:text>Verbs which take a direct object as well as either a finite or nonfinite clause complement include the following examples in English: </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>I will persuade Joe that he should come to the party</langData>
<xsl:text> and </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>I will persuade Joe to come to the party</langData>
<xsl:text>.</xsl:text>
</p>
				<p>
<xsl:text>Examples of this type in </xsl:text>
<xsl:value-of select="//language/langName" />
<xsl:text> include:</xsl:text>
</p>
				<example num="xComp.CompType.CompTypeObject.8">
<xsl:variable name="sExampleValue">
<xsl:value-of select="//comp/DPCPExample" />
</xsl:variable>
<xsl:variable name="iExampleLength" select="string-length(//comp/DPCPExample)" />
<xsl:choose>
<xsl:when test="$iExampleLength != 0 and $sExampleValue != ' '">
<xsl:call-template name="OutputInterlinearExamples">
<xsl:with-param name="sExamples">
<xsl:value-of select="//comp/DPCPExample" />
</xsl:with-param>
<xsl:with-param name="iLength">
<xsl:value-of select="string-length(//comp/DPCPExample)" />
</xsl:with-param>
<xsl:with-param name="sExNumber">xComp.CompType.CompTypeObject.8</xsl:with-param>
<xsl:with-param name="sLetterList">
<xsl:value-of select="$sMasterLetterList" />
</xsl:with-param>
</xsl:call-template>
</xsl:when>
<xsl:otherwise>
<listInterlinear>
<xsl:attribute name="letter">
<xsl:text>xComp.CompType.CompTypeObject.8.1</xsl:text>
</xsl:attribute>
<lineGroup>
<line>
<langData>
<xsl:attribute name="lang">l<xsl:value-of select="//language/langAbbr" />
</xsl:attribute>ENTER AN EXAMPLE HERE</langData>
</line>
<xsl:call-template name="DoGloss" />
</lineGroup>
<xsl:call-template name="DoFree" />
</listInterlinear>
</xsl:otherwise>
</xsl:choose>
</example>
			</section3>
			<section3 id="sCompTypeOther">
				<secTitle>Other Restrictions on Complement Clauses</secTitle>
				<p>
<xsl:text>Some languages also have verbs which have other restrictions on embedded clauses, such as that the embedded verb must be in the subjunctive mood or in the perfective aspect.  Any such examples in </xsl:text>
<xsl:value-of select="//language/langName" />
<xsl:text> are shown here:</xsl:text>
</p>
				<example num="xComp.CompType.CompTypeOther.6">
<xsl:variable name="sExampleValue">
<xsl:value-of select="//comp/otherExample" />
</xsl:variable>
<xsl:variable name="iExampleLength" select="string-length(//comp/otherExample)" />
<xsl:choose>
<xsl:when test="$iExampleLength != 0 and $sExampleValue != ' '">
<xsl:call-template name="OutputInterlinearExamples">
<xsl:with-param name="sExamples">
<xsl:value-of select="//comp/otherExample" />
</xsl:with-param>
<xsl:with-param name="iLength">
<xsl:value-of select="string-length(//comp/otherExample)" />
</xsl:with-param>
<xsl:with-param name="sExNumber">xComp.CompType.CompTypeOther.6</xsl:with-param>
<xsl:with-param name="sLetterList">
<xsl:value-of select="$sMasterLetterList" />
</xsl:with-param>
</xsl:call-template>
</xsl:when>
<xsl:otherwise>
<listInterlinear>
<xsl:attribute name="letter">
<xsl:text>xComp.CompType.CompTypeOther.6.1</xsl:text>
</xsl:attribute>
<lineGroup>
<line>
<langData>
<xsl:attribute name="lang">l<xsl:value-of select="//language/langAbbr" />
</xsl:attribute>ENTER AN EXAMPLE HERE</langData>
</line>
<xsl:call-template name="DoGloss" />
</lineGroup>
<xsl:call-template name="DoFree" />
</listInterlinear>
</xsl:otherwise>
</xsl:choose>
</example>
			</section3>
		</section2>
		<section2 id="sCompPos">
			<secTitle>Complementizer Position</secTitle>
			<p>
<xsl:text>English has two complementizers which mark declarative embedded clauses, </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>that</langData>
<xsl:text>  for finite clauses and </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>for</langData>
<xsl:text> for nonfinite clauses.  In other languages the complementizers for embedded declarative clauses may or may not be overt, and in some languages they are clitics which are written attached to another word.</xsl:text>
</p>
			<p>
<xsl:text>In </xsl:text>
<xsl:value-of select="//language/langName" />
<xsl:text>, there is </xsl:text>
<xsl:choose>
					<xsl:when test="//comp/@comp='no'">
<xsl:text>no complementizer word or clitic for declarative embedded clauses.</xsl:text>
</xsl:when>
					<xsl:when test="//comp/@comp='yes'">
<xsl:text>at least one complementizer for declarative embedded clauses.</xsl:text>
</xsl:when>
				</xsl:choose>
<xsl:text></xsl:text>
<xsl:if test="//comp/@comp='yes'">
					<xsl:text>  The complementizer is </xsl:text>
					<xsl:choose>
						<xsl:when test="//comp/@compWord='yes'">
<xsl:text>written as a separate word.</xsl:text>
</xsl:when>
						<xsl:when test="//comp/@compWord='no'">
<xsl:text>a clitic which attaches</xsl:text>
</xsl:when>
					</xsl:choose>
					<xsl:text></xsl:text>
					<xsl:if test="//comp/@compWord='no' and //comp/@comp='yes'">
						<xsl:text></xsl:text>
						<xsl:choose>
							<xsl:when test="//comp/@compCliticAttaches='edge'">
<xsl:text>at the edge of the embedded clause. </xsl:text>
</xsl:when>
							<xsl:when test="//comp/@compCliticAttaches='head'">
<xsl:text>to the verb in the embedded clause. </xsl:text>
</xsl:when>
						</xsl:choose>
						<xsl:choose>
							<xsl:when test="//comp/@compCliticPos='before'">
<xsl:text>These clitic(s) is(are) proclitic(s).</xsl:text>
</xsl:when>
							<xsl:when test="//comp/@compCliticPos='after'">
<xsl:text>These clitic(s) is(are) enclitic(s).</xsl:text>
</xsl:when>
							<xsl:when test="//comp/@compCliticPos='both'">
<xsl:text>There are some complementizer clitics which are proclitics and some which are enclitics.</xsl:text>
</xsl:when>
							<xsl:when test="//comp/@compCliticPos='unknown'">
<xsl:text>_______</xsl:text>
</xsl:when>
						</xsl:choose>
						<xsl:text></xsl:text>
					</xsl:if>
				</xsl:if>
<xsl:text></xsl:text>
<xsl:if test="//comp/@compWord='yes' and //comp/@comp='yes'">
					<xsl:text> The complementizer occurs </xsl:text>
					<xsl:choose>
						<xsl:when test="//comp/@compPos='before'">
<xsl:text>before</xsl:text>
</xsl:when>
						<xsl:when test="//comp/@compPos='after'">
<xsl:text>after</xsl:text>
</xsl:when>
						<xsl:when test="//comp/@compPos='either'">
<xsl:text>on either side (but not both sides) of</xsl:text>
</xsl:when>
						<xsl:when test="//comp/@compPos='eitherOrBoth'">
<xsl:text>on either side or on both sides of</xsl:text>
</xsl:when>
						<xsl:when test="//comp/@compPos='beforeOrBoth'">
<xsl:text>before or on both sides of</xsl:text>
</xsl:when>
						<xsl:when test="//comp/@compPos='afterOrBoth'">
<xsl:text>after or on both sides of</xsl:text>
</xsl:when>
						<xsl:when test="//comp/@compPos='both'">
<xsl:text>on both sides of</xsl:text>
</xsl:when>
						<xsl:when test="//comp/@compPos='unknown'">
<xsl:text>_______</xsl:text>
</xsl:when>
					</xsl:choose>
					<xsl:text> the embedded clause.  </xsl:text>
					<xsl:if test="//comp/@compPos!='before' and //comp/@compPos!='after' and //comp/@compEitherRestricted='unrestricted' and //comp/@comp='yes'">
						<xsl:text>All of the complementizers can occur on either side of the embedded clause.</xsl:text>
					</xsl:if>
					<xsl:text></xsl:text>
					<xsl:if test="//comp/@compPos!='before' and //comp/@compPos!='after' and //comp/@compEitherRestricted='restricted' and //comp/@comp='yes'">
						<xsl:text>There are restrictions as to which of the complementizers can occur on each side of the embedded clause.</xsl:text>
					</xsl:if>
					<xsl:text></xsl:text>
				</xsl:if>
<xsl:text></xsl:text>
</p>
		</section2>
	</section1>































</xsl:template>
</xsl:stylesheet>