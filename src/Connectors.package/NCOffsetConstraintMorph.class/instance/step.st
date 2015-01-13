stepping and presenter
step
	| outer |
	outer _ self root.
	(outer hasHalo or: [ outer owner isHandMorph ])
		ifTrue: [ self setOffset ]
		ifFalse: [ super step. self ensureInFront. ]
