stepping and presenter
ensureInFront
	"Make sure that I my line is in front of my input."
	| input world |
	constrained ifNil: [ ^self ].
	(input _ self input) ifNil: [ ^self ].
	input _ input root.
	input isHandMorph ifTrue: [ ^self ].
	(owner isNil or: [ (owner owner) ~~ (world _ input owner) ]) ifTrue: [ ^self ].
	(world isNil or: [ world isHandMorph ]) ifTrue: [  ^self ].
	(constrained bounds intersects: (input bounds)) ifFalse: [ ^self ].
	world ensureMorph: input behind: owner.