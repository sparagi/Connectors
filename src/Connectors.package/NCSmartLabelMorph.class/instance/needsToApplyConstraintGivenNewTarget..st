constraints
needsToApplyConstraintGivenNewTarget: newTarget 
	"newTarget has just been returned by 'self target'. 
	Do I have to apply the constraint? 
	If I return true, applyConstraint: will be called."
	| changed |
	changed _ (super needsToApplyConstraintGivenNewTarget: newTarget)
		or: [ | same oldHash newHash myInput |
			oldHash _ self valueOfProperty: #savedBoundsHash ifAbsent: [ 0 ].
			myInput _ self input.
			newHash _ myInput ifNotNil: [ myInput boundsSignatureHash ] ifNil: [ 0 ].
			same _ oldHash = newHash.
			same ifFalse: [ self setProperty: #savedBoundsHash toValue: newHash ].
			same not
		].
	changed ifTrue: [ self offset: 0@0 ].
	^changed
