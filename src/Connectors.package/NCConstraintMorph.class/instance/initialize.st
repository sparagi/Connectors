initialization
initialize
	super initialize.
	inputs := EmptyArray.
	dieWithInput := false.
	self lastTargetPoint: 0@0.
	self
		stepTime: self minimumStepTime;
		color: self defaultColor;
		extent: 10@10;
		connectToNearestAttachmentPoint.
