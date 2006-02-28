text morphs-add/remove
addText
	| ix tm |
	ix _ self addText: ''.
	tm _ self textMorphAt: ix.
	owner ifNotNil: [ self world activeHand newKeyboardFocus: tm. ].
	tm editor
