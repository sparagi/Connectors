geometry testing
closestPointTo: aPoint
	| curveInfo |
	curveInfo _ self curveInfoNearest: aPoint.
	^curveInfo closestPoint.