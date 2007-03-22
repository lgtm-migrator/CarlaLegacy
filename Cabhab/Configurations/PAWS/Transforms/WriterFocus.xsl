<?xml version="1.0" encoding="UTF-8"?>
<xsl:stylesheet version="1.0" xmlns:xsl="http://www.w3.org/1999/XSL/Transform">
<xsl:template match="/" mode="focus">
  <section1 id="sFocus">
	<secTitle>Focus and Topic Constructions</secTitle>
	<p>
<xsl:text>
This section considers two types of constructions which draw attention to a particular element.  Since topics occur outside of focus constructions, they will be considered first.  The following example shows that a single sentence may have both a topic and a focused phrase.  In this case, the topic </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>Bill</langData>
<xsl:text> is introduced by the topic marker </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>as for</langData>
<xsl:text>, then the focused phrase </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>soccer</langData>
<xsl:text>, which has been moved out of its regular place in the sentence follows.</xsl:text>
</p>
<ul>
<li>
<xsl:text>As for Bill, soccer he plays __ best.</xsl:text>
</li>
</ul>
<section2 id="sFocusTopics">
	<secTitle>Topics and Topic Markers</secTitle>
<p>
<xsl:text>
As defined here, topic constructions consist of a topic phrase followed by a complete sentence or question and usually set apart by punctuation.  Certain markers may be used to set off topics, as shown in the following English examples:</xsl:text>
</p>
			<ol>
				<li>
					<xsl:text>As for John, I think he will make a good doctor.</xsl:text>
				</li>
				<li>
					<xsl:text>Speaking of Jill, where is she?</xsl:text>
				</li>
			</ol>
<xsl:if test="//focus/@topic='no'">
<p>
<xsl:value-of select="//language/langName" />
<xsl:text> does not allow topic phrases. </xsl:text>
</p>
</xsl:if>
<xsl:if test="//focus/@topic='yes'">
<p>
<xsl:value-of select="//language/langName" />
<xsl:text> has topic phrases which occur </xsl:text>
<xsl:choose>
				<xsl:when test="//focus/@topicPos='before'">
<xsl:text>before</xsl:text>
</xsl:when>
				<xsl:when test="//focus/@topicPos='after'">
<xsl:text>after</xsl:text>
</xsl:when>
				<xsl:when test="//focus/@topicPos='unknown'">
<xsl:text>_______</xsl:text>
</xsl:when>
			</xsl:choose>
<xsl:text> the main sentence or question.   Some examples include:</xsl:text>
</p>
</xsl:if>
			<xsl:if test="//focus/@topic='yes'">
<example num="xFocus.FocusTopics.12">
<xsl:variable name="sExampleValue">
<xsl:value-of select="//focus/topicExample" />
</xsl:variable>
<xsl:variable name="iExampleLength" select="string-length(//focus/topicExample)" />
<xsl:choose>
<xsl:when test="$iExampleLength != 0 and $sExampleValue != ' '">
<xsl:call-template name="OutputInterlinearExamples">
<xsl:with-param name="sExamples">
<xsl:value-of select="//focus/topicExample" />
</xsl:with-param>
<xsl:with-param name="iLength">
<xsl:value-of select="string-length(//focus/topicExample)" />
</xsl:with-param>
<xsl:with-param name="sExNumber">xFocus.FocusTopics.12</xsl:with-param>
<xsl:with-param name="sLetterList">
<xsl:value-of select="$sMasterLetterList" />
</xsl:with-param>
</xsl:call-template>
</xsl:when>
<xsl:otherwise>
<listInterlinear>
<xsl:attribute name="letter">
<xsl:text>xFocus.FocusTopics.12.1</xsl:text>
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
</xsl:if>
<xsl:if test="//focus/@topic='yes'">
<p>
<xsl:text>In </xsl:text>
<xsl:value-of select="//language/langName" />
<xsl:text>, the topic phrase is </xsl:text>
<xsl:choose>
<xsl:when test="//focus/@topicMarker='no'">
<xsl:text>not marked by a topic marker.  Only the position in the sentence and possibly punctuation distinguish the topic phrase.</xsl:text>
</xsl:when>
<xsl:when test="//focus/@topicMarker='yesWord'">
<xsl:text>marked by certain words or phrases.</xsl:text>
</xsl:when>
<xsl:when test="//focus/@topicMarker='yesClitic'">
<xsl:text>marked by one or more clitics which attach to the topic phrase.</xsl:text>
</xsl:when>
<xsl:when test="//focus/@topicMarker='yesAffix'">
<xsl:text>marked by one or more affixes which attach to the topic phrase.</xsl:text>
</xsl:when>
</xsl:choose>
<xsl:if test="//focus/@topic='yes' and //focus/@topicMarker='yesWord'">
<xsl:text>The topic markers occur </xsl:text>
<xsl:choose>
<xsl:when test="//focus/@topicMarkerPos='before'">
<xsl:text>before the topic phrase itself.</xsl:text>
</xsl:when>
<xsl:when test="//focus/@topicMarkerPos='after'">
<xsl:text>after the topic phrase itself.</xsl:text>
</xsl:when>
<xsl:when test="//focus/@topicMarkerPos='either'">
<xsl:text>on either side of the topic phrase itself, but not on both sides in the same sentence.</xsl:text>
</xsl:when>
<xsl:when test="//focus/@topicMarkerPos='both'">
<xsl:text>on both sides of the topic phrase itself.</xsl:text>
</xsl:when>
<xsl:when test="//focus/@topicMarkerPos='unknown'">
<xsl:text>_______.</xsl:text>
</xsl:when>
</xsl:choose>
<xsl:text> A topic marker is </xsl:text>
<xsl:choose>
<xsl:when test="//focus/@topicMarkerRequired='no'">
<xsl:text>optional</xsl:text>
</xsl:when>
<xsl:when test="//focus/@topicMarkerRequired='yes'">
<xsl:text>required</xsl:text>
</xsl:when>
</xsl:choose>
<xsl:text> whenever there is a topic phrase.</xsl:text>
</xsl:if>
<xsl:if test="//focus/@topic='yes' and //focus/@topicMarker='yesWord' and //focus/@topicMarkerPos='either' and //focus/@topicMarkerEither='no' or //focus/@topic='yes' and //focus/@topicMarker='yesWord' and //focus/@topicMarkerPos='both' and //focus/@topicMarkerEither='no'">
<xsl:text>There are separate sets of topic markers which can occur on each side of the topic phrase.</xsl:text>
</xsl:if>
<xsl:if test="//focus/@topic='yes' and //focus/@topicMarker='yesWord' and //focus/@topicMarkerPos='either' and //focus/@topicMarkerEither='yes' or //focus/@topic='yes' and //focus/@topicMarker='yesWord' and //focus/@topicMarkerPos='both' and //focus/@topicMarkerEither='yes'">
<xsl:text>All of the topic markers may occur on either side of the topic phrase.</xsl:text>
</xsl:if>
</p>
</xsl:if>
<xsl:if test="//focus/@topicMarker!='no'">
<example num="xFocus.FocusTopics.16">
<table border="1">
<tr>
	<th>Topic Markers</th>
</tr>
	<tr>
		<td>
<table>
<xsl:variable name="sExampleValue">
<xsl:value-of select="translate(string(//focus/topicMarkerExample),'.','')" />
</xsl:variable>
<xsl:variable name="iExampleLength" select="string-length($sExampleValue)" />
<xsl:choose>
<xsl:when test="$iExampleLength != 0 and $sExampleValue != ' '">
<xsl:call-template name="OutputColExamples">
<xsl:with-param name="sExamples">
<xsl:value-of select="$sExampleValue" />
</xsl:with-param>
<xsl:with-param name="iLength">
<xsl:value-of select="string-length($sExampleValue)" />
</xsl:with-param>
</xsl:call-template>
</xsl:when>
<xsl:otherwise>
<tr>
<td>
<langData>
<xsl:attribute name="lang">l<xsl:value-of select="//language/langAbbr" />
</xsl:attribute>ENTER AN EXAMPLE HERE</langData>
</td>
</tr>
</xsl:otherwise>
</xsl:choose>
</table>
</td>
	</tr>
</table>
</example>
</xsl:if>
</section2>

<section2 id="sFocusFocus">
	<secTitle>Focused Phrases and Focus Markers</secTitle>
<p>
<xsl:text>In contrast to topics, while focus constructions also have an element fronted which may be set off by punctuation, the phrase in focus is moved from its normal position in the sentence, leaving a gap.  Certain markers, such as </xsl:text>
<langData>
<xsl:attribute name="lang">
<xsl:text>lPAWSSKEnglish</xsl:text>
</xsl:attribute>only</langData>
<xsl:text> in English, may be used to mark the focused phrase.  Focus constructions are not used frequently in SVO languages, since the subject is usually in focus and is already first in the normal order.  Other word orders, such as VSO languages, may make extensive use of focus constructions.  English examples of focus constructions include:</xsl:text>
</p>
			<ol>
				<li>
					<xsl:text>Girls, I like __.</xsl:text>
				</li>
				<li>
					<xsl:text>Soccer, Bill plays __ best.</xsl:text>
				</li>
				<li>
					<xsl:text>Only that boy, Jerry hit  __ .</xsl:text>
				</li>
			</ol>
<xsl:if test="//focus/@focus='no'">
<p>
<xsl:value-of select="//language/langName" />
<xsl:text> does not allow a focus phrase to be moved before or after the rest of the sentence out of its normal position. </xsl:text>
</p>
</xsl:if>
<xsl:if test="//focus/@focus='yes'">
<p>
<xsl:value-of select="//language/langName" />
<xsl:text> has focused phrases which occur </xsl:text>
<xsl:choose>
				<xsl:when test="//focus/@focusPos='before'">
<xsl:text>before</xsl:text>
</xsl:when>
				<xsl:when test="//focus/@focusPos='after'">
<xsl:text>after</xsl:text>
</xsl:when>
				<xsl:when test="//focus/@focusPos='unknown'">
<xsl:text>_______</xsl:text>
</xsl:when>
			</xsl:choose>
<xsl:text> the rest of the sentence.   Some examples include:</xsl:text>
</p>
</xsl:if>
			<xsl:if test="//focus/@focus='yes'">
<example num="xFocus.FocusFocus.12">
<xsl:variable name="sExampleValue">
<xsl:value-of select="//focus/focusExample" />
</xsl:variable>
<xsl:variable name="iExampleLength" select="string-length(//focus/focusExample)" />
<xsl:choose>
<xsl:when test="$iExampleLength != 0 and $sExampleValue != ' '">
<xsl:call-template name="OutputInterlinearExamples">
<xsl:with-param name="sExamples">
<xsl:value-of select="//focus/focusExample" />
</xsl:with-param>
<xsl:with-param name="iLength">
<xsl:value-of select="string-length(//focus/focusExample)" />
</xsl:with-param>
<xsl:with-param name="sExNumber">xFocus.FocusFocus.12</xsl:with-param>
<xsl:with-param name="sLetterList">
<xsl:value-of select="$sMasterLetterList" />
</xsl:with-param>
</xsl:call-template>
</xsl:when>
<xsl:otherwise>
<listInterlinear>
<xsl:attribute name="letter">
<xsl:text>xFocus.FocusFocus.12.1</xsl:text>
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
</xsl:if>
<xsl:if test="//focus/@focus='yes'">
<p>
<xsl:text>In </xsl:text>
<xsl:value-of select="//language/langName" />
<xsl:text>, the focused phrase is </xsl:text>
<xsl:choose>
<xsl:when test="//focus/@focusMarker='no'">
<xsl:text>not marked by a focus marker.  Only the position in the sentence and possibly punctuation distinguish the focused phrase.</xsl:text>
</xsl:when>
<xsl:when test="//focus/@focusMarker='yesWord'">
<xsl:text>marked by certain words or phrases.</xsl:text>
</xsl:when>
<xsl:when test="//focus/@focusMarker='yesClitic'">
<xsl:text>marked by one or more clitics which attach to the focused phrase.</xsl:text>
</xsl:when>
<xsl:when test="//focus/@focusMarker='yesAffix'">
<xsl:text>marked by one or more affixes which attach to the focused phrase.</xsl:text>
</xsl:when>
</xsl:choose>
<xsl:if test="//focus/@focus='yes' and //focus/@focusMarker='yesWord'">
<xsl:text>The focus markers occur </xsl:text>
<xsl:choose>
<xsl:when test="//focus/@focusMarkerPos='before'">
<xsl:text>before the focused phrase itself.</xsl:text>
</xsl:when>
<xsl:when test="//focus/@focusMarkerPos='after'">
<xsl:text>after the focused phrase itself.</xsl:text>
</xsl:when>
<xsl:when test="//focus/@focusMarkerPos='either'">
<xsl:text>on either side of the focused phrase itself, but not on both sides in the same sentence.</xsl:text>
</xsl:when>
<xsl:when test="//focus/@focusMarkerPos='both'">
<xsl:text>on both sides of the focused phrase itself.</xsl:text>
</xsl:when>
<xsl:when test="//focus/@focusMarkerPos='unknown'">
<xsl:text>_______.</xsl:text>
</xsl:when>
</xsl:choose>
<xsl:text> A focus marker is </xsl:text>
<xsl:choose>
<xsl:when test="//focus/@focusMarkerRequired='no'">
<xsl:text>optional</xsl:text>
</xsl:when>
<xsl:when test="//focus/@focusMarkerRequired='yes'">
<xsl:text>required</xsl:text>
</xsl:when>
</xsl:choose>
<xsl:text> whenever there is a focused phrase.</xsl:text>
</xsl:if>
<xsl:if test="//focus/@focus='yes' and //focus/@focusMarker='yesWord' and //focus/@focusMarkerPos='either' and //focus/@focusMarkerEither='no' or //focus/@focus='yes' and //focus/@focusMarker='yesWord' and //focus/@focusMarkerPos='both' and //focus/@focusMarkerEither='no'">
<xsl:text>There are separate sets of focus markers which can occur on each side of the focused phrase.</xsl:text>
</xsl:if>
<xsl:if test="//focus/@focus='yes' and //focus/@focusMarker='yesWord' and //focus/@focusMarkerPos='either' and //focus/@focusMarkerEither='yes' or //focus/@focus='yes' and //focus/@focusMarker='yesWord' and //focus/@focusMarkerPos='both' and //focus/@focusMarkerEither='yes'">
<xsl:text>All of the focus markers may occur on either side of the focused phrase.</xsl:text>
</xsl:if>
</p>
</xsl:if>
<xsl:if test="//focus/@focusMarker!='no'">
<example num="xFocus.FocusFocus.16">
<table border="1">
<tr>
	<th>Focus Markers</th>
</tr>
	<tr>
		<td>
<table>
<xsl:variable name="sExampleValue">
<xsl:value-of select="translate(string(//focus/focusMarkerExample),'.','')" />
</xsl:variable>
<xsl:variable name="iExampleLength" select="string-length($sExampleValue)" />
<xsl:choose>
<xsl:when test="$iExampleLength != 0 and $sExampleValue != ' '">
<xsl:call-template name="OutputColExamples">
<xsl:with-param name="sExamples">
<xsl:value-of select="$sExampleValue" />
</xsl:with-param>
<xsl:with-param name="iLength">
<xsl:value-of select="string-length($sExampleValue)" />
</xsl:with-param>
</xsl:call-template>
</xsl:when>
<xsl:otherwise>
<tr>
<td>
<langData>
<xsl:attribute name="lang">l<xsl:value-of select="//language/langAbbr" />
</xsl:attribute>ENTER AN EXAMPLE HERE</langData>
</td>
</tr>
</xsl:otherwise>
</xsl:choose>
</table>
</td>
	</tr>
</table>
</example>
</xsl:if>


</section2>

  </section1>


































































































</xsl:template>
</xsl:stylesheet>