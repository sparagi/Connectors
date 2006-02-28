geometry
intersectionWithLineSegmentFromCenterTo: aPoint
	| pt delta |
	pt _ super intersectionWithLineSegmentFromCenterTo: aPoint.
	delta _ pt - bounds origin.
	(delta x < 12 and: [ delta y < 12 ]) ifFalse: [ ^pt ].
	^(LineSegment from: aPoint to: self center)
		intersectionWith: (LineSegment from: self topLeft + (0@12) to: self topLeft + (12@0))
