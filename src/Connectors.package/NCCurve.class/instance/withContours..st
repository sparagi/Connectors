initialize-release
withContours: anArray
	scale _ 1.0 @ 1.0.
	offset _ 0.0 @ 0.0.
	self contours: (anArray collect: [:a | a collect: [:p | p asFloatPoint]]).
	self updateBounds