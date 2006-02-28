accessing
transform
	transform ifNil: [ transform _ 
		(glyph transformForRect: (self editBox insetBy: 4) rotation: rotation)
	].
	^transform