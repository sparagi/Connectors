layout
layoutChanged
	| oldBounds |
	oldBounds _ self outerBounds.
	self needsOwnerSet: true.
	constraints do: [ :ea | ea forceRedraw ].
	bounds _ self submorphBounds.
	fullBounds _ self outerBounds.
	fullBounds ~= oldBounds ifTrue: [
		oldBounds ifNotNil: [ self invalidRect: oldBounds ].
		self invalidRect: fullBounds ].
	owner ifNotNil: [ owner layoutChanged ].