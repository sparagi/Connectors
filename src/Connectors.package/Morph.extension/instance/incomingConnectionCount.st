*connectors-queries
incomingConnectionCount
	| retval |
	retval _ 0.
	self connectionsDo: [ :conn | conn destinationMorph == self ifTrue: [ retval := retval + 1 ]].
	^retval