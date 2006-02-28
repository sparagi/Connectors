editing
curveSegmentAt: n put: aPoint
	| delta newVerts |
	(n between: 2 and: vertices size - 1) ifFalse: [ ^false ].
	delta _ (self curveSegmentAt: n) - aPoint.
	newVerts _ vertices copyFrom: n to: n + 1.
	delta _ aPoint - newVerts average.
	newVerts _ newVerts + delta.
	self setVertices: (vertices copyReplaceFrom: n to: n + 1 with: newVerts).
	^true
