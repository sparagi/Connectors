logging
startLogging: type
	| types |
	types _ self valueOfProperty: #loggingTypes ifAbsentPut: [ Set new ].
	types add: type