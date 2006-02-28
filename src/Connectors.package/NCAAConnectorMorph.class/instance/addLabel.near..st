labeling
addLabel: text near: aPoint
	| label |
	label _ (self labelClass new string: text).
	label
		color: self color;
		align: label center with: aPoint;
		attachUnobnoxiouslyTo: self at: aPoint;
		dieWithInput: true.
	self pasteUpMorphOrWorld addMorph: label.
	^label