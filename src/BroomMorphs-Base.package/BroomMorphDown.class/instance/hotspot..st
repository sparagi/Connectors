accessing
hotspot: aPoint 
	| left right bottom newBounds |
	left _ aPoint x - span min: bounds left.
	right _ aPoint x + span max: bounds right.
	bottom _ aPoint y max: start y.
	lastHotspot _ hotspot.
	hotspot _ aPoint x @ bottom.
	newBounds _ Rectangle
				left: left
				right: right
				top: bottom - bounds height
				bottom: bottom.
	self bounds: newBounds.
