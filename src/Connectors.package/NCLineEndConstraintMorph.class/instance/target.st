constraints
target
	"Answer an Array with my target point and angle"
	| pt |
	pt _ "self griddedPoint:" self targetPoint.
	^{ pt . 
		(self nextVertex - pt) degrees.
		self inputOwnerHash
	 }