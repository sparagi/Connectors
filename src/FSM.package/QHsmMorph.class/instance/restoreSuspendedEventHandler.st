event handling-overrides
restoreSuspendedEventHandler
	| savedHandler |
	(savedHandler _ self valueOfProperty: #suspendedEventHandler) ifNotNil:
		[ eventHandler _ savedHandler.
		self removeProperty: #suspendedEventHandler.
		self trigger: #restoreSuspendedEventHandler.
		self processDeferredEvents ].
	submorphs do: [:m | m restoreSuspendedEventHandler]
