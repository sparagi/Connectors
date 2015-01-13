arrows
arrows: anArray
	"Given a pair of NCLineArrowGlyph instances at any scale,
	scale them proportionally to my line width and save copies."
	| newArrows |
	newArrows _ (anArray with: self arrowScales collect: [ :ea :scale | | arrow min |
		arrow _ (ea ifNil: [ self class defaultArrow ]) veryDeepCopy.
		min _ 2.0@2.0 / (arrow bounds extent  / arrow scale).
		arrow scale: ((scale asPoint * self fullLineWidth) max: min); yourself ]).
	arrowForms ifNotNilDo: [ :fs |
		fs do: [ :f | f ifNotNil: [ self invalidRect: (f offset extent: f extent) ] ]].
	arrows _ newArrows.
	arrowForms _ nil.
	self computeBounds.
	^arrows