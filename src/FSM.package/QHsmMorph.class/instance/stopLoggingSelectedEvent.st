logging
stopLoggingSelectedEvent
	| event |
	event _ (SelectionMenu selections: (self loggingTypes asSortedCollection)) startUp.
	event ifNil: [ ^self ].
	self stopLogging: event