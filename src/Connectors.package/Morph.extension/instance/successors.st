*connectors-graphs
successors
	| retval |
	retval _ IdentitySet new.
	self outgoingConnections do: [ :conn | conn destinationMorph
		ifNotNilDo: [ :dm | dm isHandMorph ifFalse: [ retval add: dm ] ]].
	^retval