drawing
drawSegmentedDashedCurveOn: aCanvas color: c borderColor: bc 
	| segmentOffset |
	segmentOffset := dashedBorderSpec size < 4 ifTrue: [0.0] ifFalse: [dashedBorderSpec fourth asFloat].
	self segmentsDo: [ :segment |
			segmentOffset := aCanvas
						line: segment start
						to: segment end
						width: self lineWidth
						color: c
						dashLength: dashedBorderSpec first
						secondColor: dashedBorderSpec third
						secondDashLength: dashedBorderSpec second
						startingOffset: segmentOffset].