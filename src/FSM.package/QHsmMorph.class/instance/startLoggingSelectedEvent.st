logging
startLoggingSelectedEvent
	| event |
	event _ FillInTheBlank request: 'start logging which event?'.
	(event isNil or: [ event isEmpty ]) ifTrue: [ ^self ].
	self startLogging: event