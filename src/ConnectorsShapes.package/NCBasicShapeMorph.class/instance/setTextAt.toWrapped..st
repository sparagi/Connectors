text morphs-accessing
setTextAt: index toWrapped: aString
	"Answers a Morph or nil"
	| morph |
	morph _ self textMorphAt: index.
	morph ifNotNil: [ morph contentsWrapped: aString ].
	self adjustSubmorphPositions.
	^morph.
	