editing
removeHandles
	| handles |
	handles _ submorphs select: [ :ea | ea isCurveHandle ].
	self deleteMorphs: handles.