drawing
containsPoint: aPoint
	^(super containsPoint: aPoint) and: [ 	| shadow |
			shadow _ self shadowForm.
			(shadow colorAt: (aPoint - shadow offset)) = Color black ]