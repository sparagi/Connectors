initialization
initialize
	super initialize.
	width _ 5.
	span _ 100.
	hotspot _ self center.
	self reset.
	self color: Color blue muchDarker.
	self setBalloonText: 'Drag me to align other Morphs. Drag with the Shift key to move me without affecting other Morphs. Drag me with the second mouse button to align centers.'.
	drawBroomIcon _ true.
	transient _ false.
	centered _ false.
	self filter: [ :m | true ].