geometry
outerBounds
	^ vertices
		ifNil: [super outerBounds]
		ifNotNil: [self curveBounds]