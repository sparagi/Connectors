accessing
pasteUp: anObject
	pasteUp := anObject.
	layoutBox _ pasteUp bounds insetBy: (100 min: anObject height / 6)