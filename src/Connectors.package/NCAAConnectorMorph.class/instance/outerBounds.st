layout
outerBounds
	"Return the 'outer' bounds of the receiver, e.g., the bounds that need to be invalidated when the receiver changes."
	| box |
	box _ self bounds.
	self hasDragShadow ifTrue:[box _ self expandFullBoundsForDragShadow: box]
		ifFalse: [ self hasDropShadow ifTrue:[box _ self expandFullBoundsForDropShadow: box]].
	^box