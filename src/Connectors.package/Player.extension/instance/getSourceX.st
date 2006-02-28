*connectors-slot getters/setters
getSourceX
	| source |
	source _ (self getValueFromCostume: #firstVertex) ifNil: [ ^0 ].
	^source x