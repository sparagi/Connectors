*connectorstools-menus
morphToDropFrom: aMorph
	"Answer the morph to drop if the user attempts to drop aMorph"
	| theMorph |
	theMorph _ aMorph.
	aMorph removeHalo .
	(aMorph isKindOf: NCMakerButton)
		ifTrue: [ theMorph _ aMorph target. aMorph delete ].
	^ self addButton installPrototype: theMorph; yourself