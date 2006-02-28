*connectors-graphs
addAllSuccessorsTo: aSet
	| successors |
	successors _ self successors.
	successors do: [ :successor | (aSet includes: successor) ifFalse: [ aSet add: successor. successor addAllSuccessorsTo: aSet ]]