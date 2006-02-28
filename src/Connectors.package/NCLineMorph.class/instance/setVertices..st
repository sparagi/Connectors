editing
setVertices: newVertices

	| proposedVertices |
	vertices = newVertices ifTrue: [ ^self ].

	proposedVertices _ Array streamContents: [ :s |
		s nextPut: newVertices first asFloatPoint.
		newVertices overlappingPairsDo: [ :v1 :v2 |
			(v1 dist: v2) >= 2 ifTrue: [ s nextPut: v2 asFloatPoint ] ] ].
	
	proposedVertices _ newVertices.
	
	proposedVertices size < 2 ifTrue: [ self halt ].

	proposedVertices size = 2 ifTrue: [
		(newVertices first dist: newVertices last) < 2 ifTrue: [
			proposedVertices _ { newVertices first. newVertices first + (2@2) }] ].
	vertices = proposedVertices ifTrue: [ ^self ].
	vertices _ proposedVertices.
	self computeBounds