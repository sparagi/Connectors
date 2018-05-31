events-processing
processEvent: anEvent using: defaultDispatcher
	| retval |
	retval := anEvent.
	eventHandler ifNil: [ ^super processEvent: anEvent using: defaultDispatcher ].
	eventHandler processDeferredEvents.
	((self rejectsEvent: anEvent)
		or: [ (self fullContainsPoint: anEvent position) not
		or: [ (eventHandler handleMorphicEvent: anEvent eventOrType: anEvent) not ]])
			ifTrue: [ retval := #rejected ].
	eventHandler processDeferredEvents.
	^retval