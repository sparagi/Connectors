accessing
glyph: g
	glyph _ g.
	rotation _ 0.0.
	clickPoints _ nil.
	endPoint _ nil.
	joinPoint _ g contours first first.
	transform _ nil.
	self transform.
	self invalidRect: (self editBox). 