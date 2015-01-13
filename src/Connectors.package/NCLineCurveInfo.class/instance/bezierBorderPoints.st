geometry
bezierBorderPoints
	| segOffs b1 b2 cpts |
	segOffs _ segmentIndex - 1 * 3.
	cpts _ line contours first.
	b1 _ Bezier2Segment from: (cpts at: segOffs + 1)
		via: (cpts at: segOffs + 2)
		to: (cpts at: segOffs + 3).
	cpts _ line contours third.
	segOffs _ cpts size - segOffs.
	b2 _ Bezier2Segment from: (cpts at: segOffs)
		via: (cpts at: segOffs - 1)
		to: (cpts at: segOffs - 2).
	^{ b2 valueAt: minT. b1 valueAt: minT }
