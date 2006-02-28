constraints
lastTargetPoint: aPoint
	| lastOwnerHash |
	lastOwnerHash := self lastTargetOwnerHash.
	lastTarget _ lastTarget
		ifNil: [ { aPoint . 0. lastOwnerHash } ]
		ifNotNil: [ { aPoint . lastTarget second. lastOwnerHash } ].
	^lastTarget