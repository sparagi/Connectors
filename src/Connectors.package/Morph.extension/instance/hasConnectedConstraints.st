*connectors-queries
hasConnectedConstraints
	"Answer whether I have any connected constraints"
	| ccs |
	ccs _ self valueOfProperty: #connectedConstraints ifAbsent: [ ^false ].
	^ccs anySatisfy: [ :c | c notNil ]