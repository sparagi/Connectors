initialization
outOfWorld: aWorld
	eventHandler ifNotNil: [
		self processDeferredEvents.
		self stopStepping.
		self eventHandler handleEvent: #outOfWorld.
		eventHandler _ nil ].
	super outOfWorld: aWorld