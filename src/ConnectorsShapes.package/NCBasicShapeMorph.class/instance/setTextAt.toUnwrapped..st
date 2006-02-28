text morphs-accessing
setTextAt: index toUnwrapped: aString
	"Answers a Morph or nil"
	| morph |
	morph _ self textMorphAt: index.
	morph ifNotNil: [ morph contentsAsIs: aString ].
	self adjustSubmorphPositions.
	^morph.
