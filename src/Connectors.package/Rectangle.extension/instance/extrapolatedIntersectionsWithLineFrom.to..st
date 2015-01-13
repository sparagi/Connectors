*connectors-geometry
extrapolatedIntersectionsWithLineFrom: start to: end
	| intersections side ex ey delta dx dy |
	intersections _ self intersectionsWithLineFrom: start to: end.
	intersections size = 1 ifFalse: [ ^intersections ].
	side _ self sideNearestTo: intersections anyOne.
	delta _ end - start.
	side == #left ifTrue: [ ex _ self right. ].
	side == #right ifTrue: [ ex _ self left ].
	side == #top ifTrue: [ ey _ self bottom ].
	side == #bottom ifTrue: [ ey _ self top ].

	ex ifNil: [
		delta y isZero ifTrue: [ ex _ start x ] ifFalse: [ 
			dx _ (ey - start y) * delta x / delta y.
			ex _ start x + dx.
		]
	].
	ey ifNil: [
		delta x isZero ifTrue: [ ey _ start y ] ifFalse: [ 
			dy _ (ex - start x) * delta y / delta x.
			ey _ start y + dy
		].
	].
	intersections add: ex@ey.
	^intersections