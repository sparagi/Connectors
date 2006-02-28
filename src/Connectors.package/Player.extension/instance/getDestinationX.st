*connectors-slot getters/setters
getDestinationX
	| destination |
	destination _ (self getValueFromCostume: #lastVertex) ifNil: [ ^0 ].
	^destination x