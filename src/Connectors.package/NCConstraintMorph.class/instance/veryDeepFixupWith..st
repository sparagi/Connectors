copying
veryDeepFixupWith: aDeepCopier
	super veryDeepFixupWith: aDeepCopier.
	constrained _ aDeepCopier references at: constrained ifAbsent: [ ].
	inputs _ inputs collect: [ :ea | | inp |
		inp _ ea ifNotNil: [ aDeepCopier references at: ea ifAbsent: [ nil ] ].
		inp ifNotNil: [ inp connectConstraint: self ].
		inp ].
