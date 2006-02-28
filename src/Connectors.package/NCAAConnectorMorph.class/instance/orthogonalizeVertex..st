orthogonality
orthogonalizeVertex: index
	| rect newPoint oldVertices |
	oldVertices _ line vertices.
	(index <= 1 or: [ index >= line vertices size ]) ifTrue: [ ^self  ].
	rect _ (oldVertices at: index - 1) corner: (oldVertices at: index + 1).
	newPoint _ { rect bottomLeft . rect topRight } detectMin: [ :pt | pt dist: (oldVertices at: index) ].
	(oldVertices at: index) ~= newPoint ifTrue: [
	self setVertices: (oldVertices copyReplaceFrom: index to: index with: { self griddedPoint: newPoint } ) ]
