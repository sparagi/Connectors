*connectors-slot getters/setters
getDestinationY
	| destination |
	destination _ (self getValueFromCostume: #lastVertex) ifNil: [ ^0 ].
	^destination y