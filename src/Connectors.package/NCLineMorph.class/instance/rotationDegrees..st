rotate scale and flex
rotationDegrees: degrees 
	| flex center |
	center _ self referencePosition.
	flex _ (MorphicTransform offset: center negated)
			withAngle: (degrees - self forwardDirection) degreesToRadians.
	self setVertices: (vertices collect: [:v | (flex transform: v) - flex offset]).
	self forwardDirection: degrees.

