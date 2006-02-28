accessing
beStraightSegments

	self isCurve ifTrue: [
		smoothCurve _ false.
		self computeBounds]