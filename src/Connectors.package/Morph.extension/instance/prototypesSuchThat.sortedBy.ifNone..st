*connectors-gestures
prototypesSuchThat: selectionBlock sortedBy: blockList ifNone: defaultBlock
	| allSelections sortedSelections |
	allSelections _ self prototypesSuchThat: selectionBlock ifNone: [ #() ].
	sortedSelections _ OrderedCollection new.
	blockList do: [ :block |
		sortedSelections addAllLast: ((allSelections select: block) copyWithoutAll: sortedSelections)
	].
	sortedSelections isEmpty ifTrue: [ ^defaultBlock value ].
	^sortedSelections