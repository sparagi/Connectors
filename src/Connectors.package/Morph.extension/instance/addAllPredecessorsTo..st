*connectors-graphs
addAllPredecessorsTo: aSet
	| preds |
	preds _ self predecessors.
	preds do: [ :pred | (aSet includes: pred) ifFalse: [ aSet add: pred. pred addAllPredecessorsTo: aSet ]]