*connectors-slot getters/setters
getMidpointX
	| midpoint |
	midpoint _ (self getValueFromCostume: #midpoint) ifNil: [ ^0 ].
	^midpoint x