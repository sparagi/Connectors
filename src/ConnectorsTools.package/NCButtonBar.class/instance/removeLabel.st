label
removeLabel
	| label |
	label _ self label.
	label ifNil: [ ^self ].
	label delete.