geometry
closestOrthogonalPointTo: aPoint
	|  pt tr |
	pt _ self stateRectangle closestOrthogonalPointTo: aPoint.
	tr _ self textRectangle bounds.
	((pt x between: tr left and: tr right) and: [ pt y == self stateRectangle top ])
		ifTrue: [ pt _ pt x @ self top ].
	^pt.