*connectors-world state
deleteAllHalos
	self haloMorphs do:
		[:m | (m target isSelectionMorph) ifTrue: [m target delete].
		m delete].
