*connectors
transformForRect: outsideRect rotation: angle
	| scale pointsRect newRect |
	contours do: [ :c | | rect | 
		rect _ Rectangle encompassing: c.
		pointsRect _ pointsRect ifNil: [ rect ] ifNotNil: [ pointsRect quickMerge: rect ]].
	newRect _ pointsRect scaleAndTranslateToFitInside: outsideRect.
	scale _ newRect extent asFloatPoint / pointsRect extent.
	^((((MatrixTransform2x3 withOffset: (outsideRect center))
		composedWithLocal: (MatrixTransform2x3 withRotation: angle))
		composedWithLocal: (MatrixTransform2x3 withOffset: outsideRect extent / -2))
		composedWithLocal: (MatrixTransform2x3 withScale: scale asPoint * (1 @ -1)))
		composedWithLocal: (MatrixTransform2x3 withOffset: ((pointsRect origin x) @ (pointsRect corner y)) negated)
