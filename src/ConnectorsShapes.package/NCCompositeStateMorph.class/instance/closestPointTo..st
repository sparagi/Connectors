geometry
closestPointTo: aPoint
	| pt tr |
	pt _ self stateRectangle closestPointTo: aPoint.
	tr _ self textRectangle bounds.
	((pt x between: tr left and: tr right) and: [ pt y < self bottom ])
		ifTrue: [ pt _ pt x @ self top ].
	^pt.