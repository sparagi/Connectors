accessing
hotspot: aPoint 
	| left right newBounds top |
	left _ aPoint x - span min: bounds left.
	right _ aPoint x + span max: bounds right.
	top _ aPoint y min: start y.
	lastHotspot _ hotspot.
	hotspot _ aPoint x @ top.
	newBounds _ Rectangle
				left: left
				right: right
				top: top
				bottom: top + bounds height.
	self bounds: newBounds