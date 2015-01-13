accessing
openForEditingFrom: anEvent
	| index |
	label ifNil: [^self ].
	anEvent hand newKeyboardFocus: label.
	index _ label lastCharacterIndex.
	label selectFrom: index + 1 to: index.
