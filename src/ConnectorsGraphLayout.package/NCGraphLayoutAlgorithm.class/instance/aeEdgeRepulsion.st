aesthetics
aeEdgeRepulsion
	"I am an aesthetic that causes nodes to stay away from the edges. 
	My magnitude is 1/d^2, where d is the magnitude of the distance 
	between nodes and the edge. 
	Since I consider all nodes, my time complexity is O(|V|)"
	| centers retval |
	retval _ OrderedCollection new.
	centers _ self nodes
				collect: [:ea | ea center asFloatPoint].
	centers
		do: [:center | 
			| delta mag2x mag2y | 
			delta _ center x < self layoutMorph center x
						ifTrue: [center x - self layoutMorph left]
						ifFalse: [center x - self layoutMorph right].
			delta _ delta / scale.
			mag2x _ delta isZero
						ifTrue: [1.0e8]
						ifFalse: [delta sign / (delta * delta) max: 1.0e-8].
			delta _ center y < self layoutMorph center y
						ifTrue: [center y - self layoutMorph top]
						ifFalse: [center y - self layoutMorph bottom].
			delta _ delta / scale.
			mag2y _ delta isZero
						ifTrue: [1.0e8]
						ifFalse: [delta sign / (delta * delta) max: 1.0e-8].
			retval addLast: mag2x @ mag2y].
	^ retval