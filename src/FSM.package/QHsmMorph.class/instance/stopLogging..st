logging
stopLogging: type
	| types |
	types _ self valueOfProperty: #loggingTypes ifAbsent: [ ^self ].
	types remove: type ifAbsent: []