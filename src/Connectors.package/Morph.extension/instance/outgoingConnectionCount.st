*connectors-queries
outgoingConnectionCount
	| retval |
	retval _ 0.
	self connectionsDo: [ :conn | conn sourceMorph == self ifTrue: [ retval := retval + 1 ]].
	^retval