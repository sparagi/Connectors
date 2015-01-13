*connectors-graphs
allPredecessors
	| preds |
	preds _ IdentitySet new.
	self addAllPredecessorsTo: preds.
	^preds
