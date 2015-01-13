*connectors-slot getters/setters
getSourceY
	| source |
	source _ (self getValueFromCostume: #firstVertex) ifNil: [ ^0 ].
	^source y