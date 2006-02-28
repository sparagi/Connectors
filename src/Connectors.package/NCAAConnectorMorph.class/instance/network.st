connectors-queries
network
	"Answer a set of myself plus all of the connectors that are either connected directly to me or that I'm connected to (recursively)"
	| retval |
	retval _ Set new.
	self addConnectedConnectorsTo: retval.
	^retval
