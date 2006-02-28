geometry
fullBounds
	^fullBounds ifNil: [
		self computeBounds.
		fullBounds _ self outerBounds ].