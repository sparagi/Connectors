event handling
handleMove: evt
	| lastPoint |
	lastPoint _ desiredPoint.
	desiredPoint _ evt position + offset.
	lastPoint = desiredPoint ifTrue: [ ^self ].
	self adjustCurve
		ifTrue: [ self center: evt position ]
		ifFalse: [ self stopHandleDrag: evt ].
