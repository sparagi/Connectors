*connectors-labels
relocateLabelFrom: aRectangle
	"Given a prospective label location, answer a new rectangle which doesn't overlap me"
	| newBounds nudge steps |
	newBounds _ aRectangle.
	steps _ aRectangle extent r truncated.
	[ (nudge _ self nudgeForLabel: newBounds) isZero or: [ steps < 0 ] ]
		whileFalse: [ newBounds _ newBounds translateBy: nudge.
			steps _ steps - 1 ].
	steps < 0 ifTrue: [ ^aRectangle ].
	^ newBounds
