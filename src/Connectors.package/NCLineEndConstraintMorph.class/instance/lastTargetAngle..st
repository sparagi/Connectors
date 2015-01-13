constraints
lastTargetAngle: angle
	| lastOwnerHash | 
	lastOwnerHash := self lastTargetOwnerHash.
	lastTarget _ lastTarget
		ifNil: [ { self constrainedVertex . angle. lastOwnerHash } ]
		ifNotNil: [ { lastTarget first . angle. lastOwnerHash } ].
	^lastTarget