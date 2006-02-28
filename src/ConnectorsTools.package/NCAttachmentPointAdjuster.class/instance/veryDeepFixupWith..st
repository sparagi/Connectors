copying
veryDeepFixupWith: aCopier
	super veryDeepFixupWith: aCopier.
	target _ aCopier references at: target ifAbsent: [ target ].
