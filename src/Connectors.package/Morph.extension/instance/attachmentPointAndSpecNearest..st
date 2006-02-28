*connectors-attachment points
attachmentPointAndSpecNearest: aPoint 
	"aPoint is in my coordinate system.
	Answer an Array with a Point, and a Spec.
	Note that in the case of multiple attachment points at the same position, this will favor the first one."
	| minDist minPoint minSpec dist point |
	minDist _ 1e6.
	self allAttachmentPointSpecs
		do: [:spec |
			point _ self perform: spec first withEnoughArguments: (spec allButFirst copyWith: aPoint).
			dist _ aPoint dist: point.
			dist < minDist ifTrue: [
				minDist _ dist.
				minPoint _ point.
				minSpec _ spec.
			]
		].
	^Array with: minPoint asIntegerPoint with: minSpec.