accessing
hotspot: aPoint 
	| newBounds top bottom left |
	top _ aPoint y - span min: bounds top.
	bottom _ aPoint y + span max: bounds bottom.
	left _ aPoint x min: start x.
	lastHotspot _ hotspot.
	hotspot _ left @ aPoint y.
	newBounds _ Rectangle
				left: left
				right: left  + bounds width
				top: top
				bottom: bottom.
	self bounds: newBounds