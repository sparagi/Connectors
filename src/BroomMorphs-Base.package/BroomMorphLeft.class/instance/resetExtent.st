drawing
resetExtent
	| newBounds |
	newBounds _ 0@0 extent: (12 + width) @ (2*span).
	self bounds: (newBounds align: newBounds leftCenter with: hotspot)