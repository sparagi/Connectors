buttons
addButton
	| button |
	button _ self class buttonClass new stationarySetup.
	button color: self color.
	self addMorphBack: button.
	^button
