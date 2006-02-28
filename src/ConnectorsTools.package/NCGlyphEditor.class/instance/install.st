button actions
install

	| name sample |
	sample _ self sampleGlyph.
	sample ifNil: [ ^self ].
	name _ FillInTheBlankMorph request: 'Install with what name?'.
	name isEmpty ifTrue: [ ^self ].
	sample defaultScale: self arrowScale.
	NCAAConnectorMorph arrowDictionary
		at: name put: sample;
		changed: #arrowsChanged.
