initialization
initialize
	aesthetics _ OrderedCollection new.
	self clearNodesAndConnections.
	self maxIterations: 2500.
	iterations _ 0.
	self scale: 100.0