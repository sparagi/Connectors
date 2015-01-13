*connectors-private
disconnectConstraint: aConstraint
	| oldConstraints |
	oldConstraints _ self valueOfProperty: #connectedConstraints ifAbsent: [ ^self ].
	oldConstraints _ oldConstraints reject: [ :ea | ea == aConstraint or: [ ea isNil ]].
	oldConstraints isEmpty ifTrue: [ self removeProperty: #connectedConstraints. ^self ].
	self setProperty: #connectedConstraints toValue: oldConstraints.