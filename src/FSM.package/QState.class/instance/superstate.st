accessing
superstate
	"Answer my superstate.
	Default is to return the fsm's top state."
	| superstate |
	superstate _ self trigger: #empty.
	^superstate isQState
		ifTrue: [ superstate ]
		ifFalse: [ superstate _ fsm top.
			self = superstate ifTrue: [ nil ] ifFalse: [ superstate ]]