running
testK7
| r1 r2 r3 r4 r5 r6 r7 a |
r1 _ self addRectangleNamed: 'r1' at: 50@50.
r2 _ self addRectangleNamed: 'r2' at: 150@150.
r3 _ self addRectangleNamed: 'r3' at: 250@250.
r4 _ self addRectangleNamed: 'r4' at: 350@350.
r5 _ self addRectangleNamed: 'r5' at: 50@150.
r6 _ self addRectangleNamed: 'r6' at: 150@250.
r7 _ self addRectangleNamed: 'r7' at: 250@350.

a _ { r1. r2. r3. r4. r5. r6. r7. }.

1 to: 7 do: [ :i |
			(i + 1) to: 7 do: [ :j | 
				self connect: (a at: i) to: (a at: j) ] ].

self runGraph