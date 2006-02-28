text morphs-accessing
textMorphs
	"Answer a collection of all my text morphs"
	| retval |
	retval _ OrderedCollection new.
	self allMorphsDo: [ :ea | (ea isTextMorph) ifTrue: [ retval add: ea ] ].
	^retval