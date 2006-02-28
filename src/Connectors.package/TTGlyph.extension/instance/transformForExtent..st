*connectors
transformForExtent: extent
	| scale pointsRect newRect |
	contours do: [ :c | | rect | 
		rect _ Rectangle encompassing: c.
		pointsRect _ pointsRect ifNil: [ rect ] ifNotNil: [ pointsRect quickMerge: rect ]].
	newRect _ pointsRect scaleAndTranslateToFitInside: (0@0 extent: extent asFloatPoint).
	scale _ newRect extent asFloatPoint / pointsRect extent.
	^(MatrixTransform2x3 withScale: scale asPoint * (1 @ -1))
		composedWithLocal: (MatrixTransform2x3 withOffset: ((pointsRect origin x) @ (pointsRect corner y)) negated).