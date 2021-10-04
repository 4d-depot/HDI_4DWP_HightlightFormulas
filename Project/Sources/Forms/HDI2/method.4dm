var $path : Text
var $page : Integer
var $pict : Picture

var $o : Object

Case of 
		
	: (Form event code:C388=On Load:K2:1)
		
		ARRAY TEXT:C222(Tabs; 0)
		ALL RECORDS:C47([DOC:1])
		ORDER BY:C49([DOC:1]; [DOC:1]Order:4; >)
		SELECTION TO ARRAY:C260([DOC:1]Title:3; tabs)
		
		GOTO SELECTED RECORD:C245([DOC:1]; 1)
		WParea:=[DOC:1]SampleDoc:2
		
		Form:C1466.trace:=False:C215
		OBJECT SET VISIBLE:C603(*; "btnTrace"; False:C215)
		OBJECT SET VISIBLE:C603(*; "btnHtml"; False:C215)
		
		Form:C1466.displayReferences:=1
		Form:C1466.displayValues:=0
		
		Form:C1466.highlightValues:=False:C215
		Form:C1466.highlightReferences:=True:C214
		
		Form:C1466.highlightGreen:=False:C215
		
		If (False:C215)  // set to true for title localisation based on standard action
			$o:=Get action info:C1442("visibleReferences")
			OBJECT SET TITLE:C194(*; "cb_visibleReferences"; $o.title)
			
			$o:=Get action info:C1442("formulaHighlightReferences")
			OBJECT SET TITLE:C194(*; "cb_highlightRef"; $o.title)
			
			$o:=Get action info:C1442("formulaHighlightValues")
			OBJECT SET TITLE:C194(*; "cb_highlightVal"; $o.title)
		End if 
		
	: (Form event code:C388=On Timer:K2:25)
		
		SET TIMER:C645(0)
		
	: (Form event code:C388=On Page Change:K2:54)
		
		$page:=FORM Get current page:C276
		OBJECT SET VISIBLE:C603(*; "btnTrace"; ($page#1) & ($page#4))
		OBJECT SET VISIBLE:C603(*; "btnHtml"; ($page#1) & ($page#4))
		
		GOTO SELECTED RECORD:C245([DOC:1]; $page)
		WParea:=[DOC:1]SampleDoc:2
		
		If ($page=2)
			SetupDisplay
		End if 
		
End case 