halos and balloon help
hasHalo
	| halo haloTarget |
	super hasHalo ifTrue: [ ^true ].
	halo _ self currentHand halo.
	halo ifNil: [ ^false ].
	haloTarget _ halo target.
	haloTarget == self ifTrue: [ ^true ].
	self allMorphsDo: [ :ea | haloTarget == ea ifTrue: [ ^true ] ].
	^false