buttons
addButtonWithPrototype: proto
	| button |
	button _ self class buttonClass fromPrototype: proto.
	self addMorphBack: button.
	^button.