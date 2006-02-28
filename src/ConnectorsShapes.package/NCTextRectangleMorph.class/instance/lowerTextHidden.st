accessing
lowerTextHidden
	| tms |
	(tms _ self textMorphs) size <= 1 ifTrue: [ ^false ].
	^tms last visible not