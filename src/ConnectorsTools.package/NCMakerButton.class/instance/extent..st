accessing
extent: aPoint
	super extent: aPoint.
	self sketch ifNotNilDo: [ :sketch | | newInnerBounds formExtent maxExtent |
		newInnerBounds _ self bounds insetBy: 4.
		formExtent _ sketch form extent.
		maxExtent _ newInnerBounds extent min: self maximumImageExtent.
		formExtent _ formExtent scaleToNoGreaterThan: maxExtent.
		sketch extent: (formExtent asIntegerPoint max: 1@1).
		sketch align: sketch center with: self center.
		self layoutChanged.
	].
