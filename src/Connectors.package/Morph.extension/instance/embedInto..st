*connectors-embeddings
embedInto: evt
	"Embed the receiver into some other morph"
	|  menu target |
	menu _ CustomMenu new.
	self potentialEmbeddingTargets  do: [:m | 
		menu add: (m knownName ifNil:[m class name asString]) action: m].
	target _ menu startUpWithCaption: ('Embed ' translated , self externalName, ' into...' translated).
	target ifNil:[^self].
	target addMorphFrontFromWorldPosition: self.