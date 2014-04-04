*connectors-point functions
doDashesTo: pt2 dashLength: s1 secondDashLength: s2 startingOffset: startingOffset block: block
	"Draw a line using the given width, colors and dash lengths.
	Originally written by Stephan Rudlof; tweaked by Dan Ingalls
	to use startingOffset for sliding offset as in 'ants' animations.
	Returns the sum of the starting offset and the length of this line."

	| dist deltaBig nextPhase segmentOffset phase segmentLength startPoint distDone endPoint segLens pt1|
	pt1:= self.
	dist := pt1 dist: pt2.
	dist = 0 ifTrue: [^startingOffset].
	s1 = 0 & (s2 = 0) ifTrue: [^startingOffset].
	deltaBig := pt2 - pt1.

	segLens := { 
				s1 asFloat.
				s2 asFloat}.
	nextPhase := { 
				2.
				1}.

	"Figure out what phase we are in and how far, given startingOffset."
	segmentOffset := startingOffset \\ (s1 + s2).
	segmentLength := segmentOffset < s1 
		ifTrue: 
			[phase := 1.
			s1 - segmentOffset]
		ifFalse: 
			[phase := 2.
			 s1 + s2 - segmentOffset].
	startPoint := pt1.
	distDone := 0.0.
	[distDone < dist] whileTrue: 
			[
			| moveTowardsVector |
			segmentLength := segmentLength min: dist - distDone.
			moveTowardsVector:= (deltaBig * segmentLength / dist).
			endPoint := startPoint + moveTowardsVector.
			phase = 1 ifTrue: [block value: startPoint truncated value: endPoint truncated value: moveTowardsVector  "normalize"].
			distDone := distDone + segmentLength.
			phase := nextPhase at: phase.
			startPoint := endPoint.
			segmentLength := segLens at: phase].
	^startingOffset + dist