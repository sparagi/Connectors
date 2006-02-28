*connectors-private
connectConstraint: aConstraint
	| oldConstraints |
	oldConstraints _ self valueOfProperty: #connectedConstraints ifAbsentPut: [ WeakSet new ].
	oldConstraints add: aConstraint.