label
addLabel: aString
	| label |
	label _ NCDisplayTextMorph new contents: aString; color: Color white; lock.
	self addMorphFront: label