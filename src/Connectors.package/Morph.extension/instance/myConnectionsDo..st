*connectors-queries
myConnectionsDo: aBlock
	"Evaluate aBlock with all the unique NCConnectorMorphs that are connected directly to me."
	| ccs totalConstraints allConnectors |
	ccs _ self valueOfProperty: #connectedConstraints ifAbsent: [ ^self ].
	totalConstraints := 0.
	allConnectors := IdentitySet new.
	ccs do: [ :ea | ea notNil
		ifTrue: [ totalConstraints _ totalConstraints + 1.
			ea isLineConstraint ifTrue: [ allConnectors add: ea drawingElement ]]].
	allConnectors do: aBlock.
	totalConstraints isZero ifTrue: [ self removeProperty: #connectedConstraints ].
