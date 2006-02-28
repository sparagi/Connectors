*connectors-intersection
intersectionWith: anotherSegment
	"Copied from LineIntersections>>intersectFrom:to:with:to:"
	| det deltaPt alpha beta pt1Dir pt2Dir |
	pt1Dir _ end - start.
	pt2Dir _ anotherSegment end - anotherSegment start.
	det _ (pt1Dir x * pt2Dir y) - (pt1Dir y * pt2Dir x).
	deltaPt _ anotherSegment start - start.
	alpha _ (deltaPt x * pt2Dir y) - (deltaPt y * pt2Dir x).
	beta _ (deltaPt x * pt1Dir y) - (deltaPt y * pt1Dir x).
	det = 0 ifTrue:[^nil]. "no intersection"
	alpha * det < 0 ifTrue:[^nil].
	beta * det < 0 ifTrue:[^nil].
	det > 0 
		ifTrue:[(alpha > det or:[beta > det]) ifTrue:[^nil]]
		ifFalse:[(alpha < det or:[beta < det]) ifTrue:[^nil]].
	"And compute intersection"
	^start + (alpha * pt1Dir / (det@det))