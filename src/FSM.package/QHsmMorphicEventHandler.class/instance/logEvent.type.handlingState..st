logging
logEvent: evt type: evtType handlingState: selector 
	| logType eventOrType myStateName |
	logType _ evtType == #step
				ifTrue: [#stepEventHandled]
				ifFalse: [#eventHandled].
	(#(mouseMove mouseOver) includes: evtType) ifTrue: [ logType _ #moveEventHandled ].
	myStateName _ myState stateName.
	eventOrType _ evt == evtType
				ifTrue: [event]
				ifFalse: [evtType].
	myStateName ~~ selector
		ifTrue: [self log: logType items: {evt. eventOrType. selector. '[' , myStateName , ']'}]
		ifFalse: [self log: logType items: {evt. eventOrType. selector}]