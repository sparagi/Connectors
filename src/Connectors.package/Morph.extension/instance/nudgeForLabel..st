*connectors-labels
nudgeForLabel: labelBounds
	"Make label not overlap me. Answer an increment, or 0@0 if OK"
	| flags intersection |
	intersection _ labelBounds intersect: self bounds.
	intersection hasPositiveExtent ifFalse: [ ^0@0 ].
	intersection = labelBounds ifTrue: [ ^0@-1 ].
	flags _ 0.
	intersection top == self top ifTrue: [ flags _ flags + 1 ].
	intersection right == self right ifTrue: [ flags _ flags + 2 ].
	intersection bottom == self bottom ifTrue: [ flags _ flags + 4 ].
	intersection left == self left ifTrue: [ flags _ flags + 8 ].
	^flags caseOf: {
	"no intersection"
			[ 0 ] -> [ 0@0 ].
	"2 adjacent sides only" 
			[ 9 ] -> [ 1@1 ].
			[ 3 ] -> [ -1@1 ].
			[ 12 ] -> [ 1@-1 ].
			[ 6 ] -> [ -1@-1 ].
	"2 opposite sides only" 
			[ 10 ] -> [ 0@-1 ].
			[ 5 ] -> [ 1@0 ].
	"only 1 side" 
			[ 8 ] -> [ -1@0 ].
			[ 1 ] -> [ 0@-1 ].
			[ 2 ] -> [ 1@0 ].
			[ 4 ] -> [ 0@1 ].
	"3 sides" 
			[ 11 ] -> [ 0@1 ].
			[ 13 ] -> [ 1@0 ].
			[ 14 ] -> [ 0@-1 ].
		[ 7 ] -> [ -1@0 ].
 "all sides" 
		[ 15 ] -> [ 1@-1 "move up and to the right" ].
	}.
