events-processing
handleListenEvent: anEvent
	eventHandler processDeferredEvents.
	eventHandler handleEvent: anEvent.
	eventHandler processDeferredEvents.