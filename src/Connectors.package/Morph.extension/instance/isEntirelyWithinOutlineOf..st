*connectors-geometry
isEntirelyWithinOutlineOf: aMorph

	| itsBounds |
	itsBounds _ aMorph fullBounds.
	(itsBounds containsRect: self fullBounds) ifFalse: [ ^false ].
	^self isEntirelyWithinShadowForm: aMorph shadowForm