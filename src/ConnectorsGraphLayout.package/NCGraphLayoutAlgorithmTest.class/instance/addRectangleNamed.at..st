running
addRectangleNamed: name at: pos

| r |
r _ RectangleMorph new 
	position: pos;
	color: Color veryLightGray.
r addMorphCentered: (TextMorph new contents: name).
mainWindowMorph addMorph: r.
^r
	