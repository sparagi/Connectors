accessing
sampleGlyph
	| newContours rTransform ref endRef rot |
	"Scale the contour points to fit a 1x1 square, then offset them by the join point."
	glyph isNil ifTrue: [ ^nil ].
	newContours _ glyph contoursShiftedToStartWith: joinPoint.
	rot _ endPoint ifNil: [ rotation ]
		ifNotNil: [ ((endPoint- joinPoint) theta radiansToDegrees) - 90.0 ].
	rTransform _ glyph transformForRect: (-0.5@-0.5 corner: (0.5@0.5)) rotation: rot.
	ref _ rTransform transformPoint: joinPoint.
	endRef _ rTransform transformPoint: (endPoint ifNil: [ joinPoint ]).
	newContours _ newContours collect: [ :c |
		(Array withAll: c) collect: [ :pt | ((rTransform transformPoint: pt asFloatPoint) - ref) roundTo: 0.0001 ]
	].
	transformedClickPoints _ self clickPoints collect: [  :pt | ((rTransform transformPoint: pt asFloatPoint) - ref) roundTo: 0.0001 ].
	^(NCLineArrowGlyph withContours: newContours)
		offset: ref - endRef;
		scale: self arrowScale;
		yourself
