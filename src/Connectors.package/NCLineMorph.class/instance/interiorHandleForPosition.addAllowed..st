editing
interiorHandleForPosition: pos addAllowed: canAddVertex 
	| handle sel |
	handle _ self handleForPosition: pos addAllowed: canAddVertex.
	sel _ handle setPointSelector.
	handle setPointSelector: ('interiorC', (sel allButFirst)) asSymbol.
	^handle
