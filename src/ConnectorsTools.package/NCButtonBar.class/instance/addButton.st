buttons
addButton
	| button |
	button _ self class buttonClass new.
	button color: self color.
	self addMorphBack: button.
	^button