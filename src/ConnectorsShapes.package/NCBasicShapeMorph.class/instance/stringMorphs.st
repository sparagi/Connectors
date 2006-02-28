text morphs-accessing
stringMorphs
	"Answer a collection of all my string morphs"
	| retval |
	retval _ OrderedCollection new.
	self allMorphsDo: [ :ea | (ea isStringMorph) ifTrue: [ retval add: ea ] ].
	^retval