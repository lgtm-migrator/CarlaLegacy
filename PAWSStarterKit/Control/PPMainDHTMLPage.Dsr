VERSION 5.00
Begin {90290CCD-F27D-11D0-8031-00C04FB6C701} PPMainDHTMLPage
   ClientHeight    =   4395
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   6720
   _ExtentX        =   11853
   _ExtentY        =   7752
   SourceFile      =   "..\HTMs\PPMain.htm"
   BuildFile       =   "..\Control\PPMain.htm"
   BuildMode       =   0
   TypeLibCookie   =   35
   AsyncLoad       =   0   'False
   id              =   "PPMainDHTMLPage"
   ShowBorder      =   0   'False
   ShowDetail      =   -1  'True
   AbsPos          =   -1  'True
End
Attribute VB_Name = "PPMainDHTMLPage"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = True
Option Explicit
Private Sub DHTMLPage_Load()

	Dim elem As IXMLDOMNode
	Set elem = gxmlDom.selectSingleNode("//pp/example")
	If (elem.baseName <> "") Then
		PPMainExample.Value = elem.Text
	Else
		PPMainExample.Value = ""
	End If

		' Use language-specific stylesheet
	If (DHTMLPage.Document.styleSheets.length >= 1) Then
		DHTMLPage.Document.styleSheets(0).href = "../styles/" & gsLangAbbr & "PAWSStarterKit.css"
	End If
	BaseWindow.focus
End Sub

Private Function PPMainOK_onclick() As Boolean

	Dim elem As IXMLDOMNode
	Set elem = gxmlDom.selectSingleNode("//pp/example")
	'TODO: figure what to do if any of these are missing!
	elem.Text = PPMainExample.Value

	gbDirty = True  ' mark it as having changed

	PPMainOK_onclick = True

	BaseWindow.navigate "PPModifiers.htm"
End Function

Private Function PPMainCancel_onclick() As Boolean
	PPMainCancel_onclick = True
	On Error GoTo noDocInHistory
	BaseWindow.history.back
	Exit Function
noDocInHistory:
   Resume Next

End Function
