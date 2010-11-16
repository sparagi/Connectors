*connectors-embeddings
embedInto: evt
	"Embed the receiver into some other morph"
	|  menu target |
	menu := CustomMenu new.
	self potentialEmbeddingTargets  do: [:m | 
		menu add: (m knownName ifNil:[m class name asString]) action: m].
	target := menu startUpWithCaption: ('Embed ' translated , self externalName, ' into...' translated).
	target ifNil:[^self].
	target addMorphFrontFromWorldPosition: self.