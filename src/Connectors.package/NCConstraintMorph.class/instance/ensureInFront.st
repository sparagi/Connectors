stepping and presenter
ensureInFront
	"Make sure that I am in front of my input."
	| meInWorld input inputInWorld pu |
	((input _ self input) isNil) ifTrue: [ ^self ].
	inputInWorld _ input root.
	meInWorld _ self isFlexed ifTrue: [ owner ] ifFalse: [ self ].
	(meInWorld boundsInWorld intersects: (inputInWorld boundsInWorld)) ifFalse: [ ^self ].
	inputInWorld owner ~~ meInWorld owner ifTrue: [ ^self ].
	((pu _ meInWorld pasteUpMorph) isNil or: [ pu ~= inputInWorld pasteUpMorph ])
		ifTrue: [ ^self ].
	pu ensureMorph: inputInWorld behind: meInWorld.
