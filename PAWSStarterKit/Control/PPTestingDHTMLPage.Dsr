VERSION 5.00
Begin {90290CCD-F27D-11D0-8031-00C04FB6C701} PPTestingDHTMLPage
   ClientHeight    =   4275
   ClientLeft      =   0
   ClientTop       =   0
   ClientWidth     =   6525
   _ExtentX        =   11509
   _ExtentY        =   7541
   SourceFile      =   "..\HTMs\PPTesting.htm"
   BuildFile       =   "..\Control\PPTesting.htm"
   BuildMode       =   0
   TypeLibCookie   =   52
   AsyncLoad       =   0   'False
   id              =   "PPTestingDHTMLPage"
   ShowBorder      =   0   'False
   ShowDetail      =   -1  'True
   AbsPos          =   -1  'True
End
Attribute VB_Name = "PPTestingDHTMLPage"
Attribute VB_GlobalNameSpace = False
Attribute VB_Creatable = True
Attribute VB_PredeclaredId = False
Attribute VB_Exposed = True
Private Sub DHTMLPage_Load()
		' change name of test file
	PPTestingFile.innerText = gsLangAbbr & "PPTest.txt"

		' Use language-specific stylesheet
	If (DHTMLPage.Document.styleSheets.length >= 1) Then
		DHTMLPage.Document.styleSheets(0).href = "../styles/" & gsLangAbbr & "PAWSStarterKit.css"
	End If
	BaseWindow.focus
End Sub

Private Function PPTestingOK_onclick() As Boolean

	gbDirty = True  ' mark it as having changed

	PPTestingOK_onclick = True

	BaseWindow.navigate "Contents.htm"
End Function

Private Function PPTestingCancel_onclick() As Boolean
	PPTestingCancel_onclick = True
	On Error GoTo noDocInHistory
	BaseWindow.history.back
	Exit Function
noDocInHistory:
   Resume Next

End Function
