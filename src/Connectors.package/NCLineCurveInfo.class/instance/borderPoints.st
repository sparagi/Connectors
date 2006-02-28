geometry
borderPoints
	| segOffs b1 b2 cpts |
	line isCurve ifTrue: [ ^self bezierBorderPoints ].
	cpts _ line contours first.
	b1 _ LineSegment from: (cpts at: segmentIndex)
		to: (cpts at: segmentIndex + 1).
	cpts _ line contours third.
	segOffs _ cpts size - segmentIndex.
	b2 _ LineSegment from: (cpts at: segOffs + 1)
		to: (cpts at: segOffs).
	^{ b2 valueAt: minT. b1 valueAt: minT }
