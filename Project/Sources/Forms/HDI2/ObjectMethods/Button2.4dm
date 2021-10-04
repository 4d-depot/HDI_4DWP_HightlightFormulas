var $menu; $result : Text

$menu:=Create menu:C408


APPEND MENU ITEM:C411($menu; ak standard action title:K76:83)
SET MENU ITEM PROPERTY:C973($menu; -1; Associated standard action:K56:1; "formulaHighlightReferences")
APPEND MENU ITEM:C411($menu; ak standard action title:K76:83)
SET MENU ITEM PROPERTY:C973($menu; -1; Associated standard action:K56:1; "formulaHighlightValues")
APPEND MENU ITEM:C411($menu; ak standard action title:K76:83)
SET MENU ITEM PROPERTY:C973($menu; -1; Associated standard action:K56:1; "formulaHighlight")

APPEND MENU ITEM:C411($menu; "-")

APPEND MENU ITEM:C411($menu; "Highlight expressions with green")
SET MENU ITEM PROPERTY:C973($menu; -1; Associated standard action:K56:1; "formulaHighlightColor?value=lightGreen")
APPEND MENU ITEM:C411($menu; "Choose highlight expressions color…")
SET MENU ITEM PROPERTY:C973($menu; -1; Associated standard action:K56:1; "formulaHighlightColor/showDialog")

APPEND MENU ITEM:C411($menu; ak standard action title:K76:83)
SET MENU ITEM PROPERTY:C973($menu; -1; Associated standard action:K56:1; "formulaHighlightColor")

$result:=Dynamic pop up menu:C1006($menu)
RELEASE MENU:C978($menu)

