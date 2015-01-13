*connectors-queries
incomingConnections
	| retval |
	retval _ IdentitySet new.
	self connectionsDo: [ :conn | conn destinationMorph == self ifTrue: [ retval add: conn ]].
	^retval