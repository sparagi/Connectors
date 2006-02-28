accessing
arrowScale: aPoint
	| |
	arrowScale _ aPoint asPoint asFloatPoint.
	sampleLine ifNotNil: [  sampleLine arrowScales: { arrowScale. arrowScale } ].