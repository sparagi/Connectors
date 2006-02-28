drawing
addTextBlock: text
	| ix |
	ix _ super addTextBlock: text.
	(self textMorphAt: ix) margins: 4@0.
	self adjustSubmorphPositions.
	^ix
