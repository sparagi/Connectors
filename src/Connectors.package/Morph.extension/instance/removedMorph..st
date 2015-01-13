*connectors-embeddings
removedMorph: aMorph
	"Notify the receiver that aMorph was just removed from its children"

	self player ifNotNilDo: [ :player |
		"Player must be notified"
		player noteDeletionOfSubmorph: aMorph fromCostume: self ].