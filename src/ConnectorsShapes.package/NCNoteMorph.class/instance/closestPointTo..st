geometry
closestPointTo: aPoint
	"fix for corner"
	| pt delta |
	pt _ super closestPointTo: aPoint.
	delta _ pt - self topLeft.
	(delta x >= 12 or: [ delta y >= 12 ]) ifTrue: [ ^pt ].
	^aPoint nearestPointOnLineFrom: (self topLeft + (12@0)) to: (self topLeft + (0@12))
