debug and other
buildDebugMenu: aHand
	| menu |
	menu _ super buildDebugMenu: aHand.
	menu addLine.
	menu add: 'browse state handler class' target: self eventHandler selector: #browseHierarchy.
	menu add: 'view state hierarchy' target: self selector: #viewStateHierarchy.
	menu add: 'view log' target: self selector: #viewLog.
	menu add: 'clear log' target: self selector: #clearLog.
	menu addLine.
	menu add: 'start logging all but move and step events' target: self selector: #startLoggingAll.
	menu add: 'start logging move events' target: self selector: #startLoggingMoveEvents.
	menu add: 'start logging step events' target: self selector: #startLoggingStepEvents.
	menu add: 'start logging event...' target: self selector: #startLoggingSelectedEvent.
	menu addLine.
	"self loggingTypes isEmpty ifFalse: ["
		menu add: 'stop logging all events' target: self selector: #stopLoggingAll.
		menu add: 'stop logging event...' target: self selector: #stopLoggingSelectedEvent.
	"]."
	^menu