accessing
hotspot: aPoint 
	| newBounds top bottom right |
	top _ aPoint y - span min: bounds top.
	bottom _ aPoint y + span max: bounds bottom.
	right _ aPoint x max: start x.
	lastHotspot _ hotspot.
	hotspot _ right @ aPoint y.
	newBounds _ Rectangle
				left: right - bounds width
				right: right
				top: top
				bottom: bottom.
	self bounds: newBounds