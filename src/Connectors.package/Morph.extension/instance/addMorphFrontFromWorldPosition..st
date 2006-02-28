*connectors-embeddings
addMorphFrontFromWorldPosition: aMorph
	| addSlot prompt |
	self addMorphFront: aMorph fromWorldPosition: aMorph positionInWorld.
	addSlot := self shouldAddSlotForEmbeddedMorph: aMorph.
	addSlot ifFalse: [ ^self ].
	prompt := self shouldPromptForSlotForEmbeddedMorph: aMorph.
	(prompt not or: [ self confirm: 'add slot for ' translated, (aMorph externalName) ])
		ifTrue: [ self assuredPlayer createSlotFor: aMorph ].