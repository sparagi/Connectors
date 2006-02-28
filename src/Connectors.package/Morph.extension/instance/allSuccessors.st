*connectors-graphs
allSuccessors
	| preds |
	preds _ IdentitySet new.
	self addAllSuccessorsTo: preds.
	^preds
