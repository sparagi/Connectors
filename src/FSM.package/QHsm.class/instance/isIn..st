testing
isIn: aStateOrName
	"Being in a given state means also being in all the substates of that state."
	| state |
	state _ myState.
	[ state notNil ] whileTrue: [
		state = aStateOrName ifTrue: [ ^true ].
		state _ state superstate ].
	^false