initialization
reinitializeFSM
	"Handy in debugging"
	eventHandler _ self class eventHandlerClass eventHandlerFor: self.
	self initializeFSM.