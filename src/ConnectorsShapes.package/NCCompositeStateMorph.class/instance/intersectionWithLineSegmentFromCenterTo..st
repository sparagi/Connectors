geometry
intersectionWithLineSegmentFromCenterTo: aPoint 
	"This is close, except for upper left corner"
	| pt tr |
	pt _ self stateRectangle intersectionWithLineSegmentFromCenterTo: aPoint .
	tr _ self textRectangle bounds.
	((pt x between: tr left and: tr right) and: [ pt y < self bottom ])
		ifTrue: [ pt _ super intersectionWithLineSegmentFromCenterTo: aPoint.
			(pt x < tr left) ifTrue: [ pt _ tr left @ pt y ].
		].
	^pt.