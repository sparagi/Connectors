drawing
resetExtent
	| newBounds |
	newBounds _ 0@0 extent: (2*span) @ (12 + width).
	self bounds: (newBounds align: newBounds topCenter with: hotspot)