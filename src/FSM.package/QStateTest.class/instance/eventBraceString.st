utilities
eventBraceString
	"self eventBraceString"
	^String streamContents: [ :s |
		s nextPutAll: 'self assert: fsm events = {'; cr; tab.
		fsm events do: [ :ev | s store: ev ] separatedBy: [ s nextPut: $.; cr; tab ].
		s nextPutAll: '} asOrderedCollection.'; cr.
		]