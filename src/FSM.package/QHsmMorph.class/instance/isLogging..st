logging
isLogging: type
	| types |
	types _ self valueOfProperty: #loggingTypes ifAbsent: [ ^false ].
	^types includes: type