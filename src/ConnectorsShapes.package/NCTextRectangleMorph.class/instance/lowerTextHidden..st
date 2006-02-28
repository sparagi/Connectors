accessing
lowerTextHidden: aBoolean
	| secondTM |
	secondTM _ self textMorphAt: 2.
	secondTM ifNil: [ ^self ].
	secondTM _ (submorphs indexOf: secondTM) - 1.

	submorphs withIndexDo: [ :m :i |
		i >= secondTM ifTrue: [m visible: aBoolean not].
	].
	self layoutChanged