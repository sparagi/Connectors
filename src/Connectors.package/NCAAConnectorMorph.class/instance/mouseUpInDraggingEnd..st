event handling
mouseUpInDraggingEnd: anEvent
	"Answer true if the mouse up means that we're done dragging"
	| pt dist |

	self valueOfProperty: #startDraggingEvent ifPresentDo: [ :started |
		anEvent timeStamp - started timeStamp < HandMorph doubleClickTime
			ifTrue: [ ^false ].
		"(anEvent position dist: started position) < 10 ifTrue: [ ^false ]."
		self removeProperty: #startDraggingEvent
	].

	pt _ self valueOfProperty: #triggeredWireFinish ifAbsent: [ 0@0 ].
	dist _ anEvent position dist: pt.
	dist < 10 ifTrue: [ ^false ].

	anEvent hand releaseMouseFocus: self.
	^true