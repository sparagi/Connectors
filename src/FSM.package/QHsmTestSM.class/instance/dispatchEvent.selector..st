running
dispatchEvent: anEvent selector: selector
	| type handlerState  |
	type _ anEvent eventType.
	type ~~ #empty ifTrue: [ events addLast: ((anEvent ifNotNil: [ type ]) -> selector) ].
	handlerState _ super dispatchEvent: anEvent selector: selector.
	^handlerState.