*connectors-geometry
closestOrthogonalPointTo: aPoint
	| xMax yMax |
	xMax _ aPoint x.
	yMax _ aPoint y.
	(aPoint y between: bounds top and: bounds bottom) ifTrue: [
		xMax _ (aPoint x < bounds left)
			ifTrue: [ self pasteUpMorphOrWorld right ]
			ifFalse: [ self pasteUpMorphOrWorld left ].
	].
	(aPoint x between: bounds left and: bounds right) ifTrue: [
		yMax _ (aPoint y < bounds top)
			ifTrue: [ self pasteUpMorphOrWorld bottom ]
			ifFalse: [ self pasteUpMorphOrWorld top ].
	].
	^(self firstIntersectionWithLineFrom: aPoint to: xMax@yMax)
		ifNil: [ self intersectionWithLineSegmentFromCenterTo: aPoint ].