events
deferEvent: anEvent
	"Defer anEvent for later processing."
	(eventQueue ifNil: [ eventQueue _ SharedQueue new ]) nextPut: anEvent.
