event handling
focusBoundsFor: anEvent
	| rect |
	rect _ anEvent hand autoFocusRectangleBoundsFor: self.
	^rect quickMerge: (self outerBounds outsetBy: 40).
