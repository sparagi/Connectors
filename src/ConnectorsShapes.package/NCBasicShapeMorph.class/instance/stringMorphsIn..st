text morphs-accessing
stringMorphsIn: aMorph
	"Answer a collection of all my string morphs"
	| retval |
	retval _ OrderedCollection new.
	aMorph allMorphsDo: [ :ea | (ea isStringMorph) ifTrue: [ retval add: ea ] ].
	^retval