initialization
initializeFSM
	eventHandler ifNil: [
		eventHandler _ self class eventHandlerClass eventHandlerFor: self ].
	eventHandler init.
