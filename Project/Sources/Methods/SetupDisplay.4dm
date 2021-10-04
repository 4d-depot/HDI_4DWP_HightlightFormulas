//%attributes = {}
var $viewProps : Object

If (Form:C1466.trace)
	TRACE:C157
End if 

$viewProps:=New object:C1471


If (Form:C1466.displayReferences=1)
	$viewProps[wk visible references:K81:286]:=True:C214
Else 
	$viewProps[wk visible references:K81:286]:=False:C215
End if 


$viewProps.formulaHighlight:=0
If (Form:C1466.highlightReferences=True:C214)
	$viewProps.formulaHighlight:=$viewProps.formulaHighlight+wk references:K81:353
End if 
If (Form:C1466.highlightValues=True:C214)
	$viewProps.formulaHighlight:=$viewProps.formulaHighlight+wk values:K81:354
End if 

If (Form:C1466.highlightGreen=True:C214)
	$viewProps.formulaHighlightColor:="LightGreen"
Else 
	$viewProps.formulaHighlightColor:="LightGrey"
End if 

WP SET VIEW PROPERTIES:C1648(*; "WParea"; $viewProps)