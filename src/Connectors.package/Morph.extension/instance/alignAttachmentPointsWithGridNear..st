*connectors-dropping/grabbing
alignAttachmentPointsWithGridNear: aPoint
	"Try to align my AP nearest the grid with the prevailing grid."
	| tweak minDist tweaks best aps |
	aps := self attachmentPoints.
	aps isEmpty ifTrue: [ ^self position: (self griddedPoint: self position) ].
	minDist _ 1000.
	tweak _ 0@0.
	tweaks _ Bag new.
	best _ 0@0.
	aps do: [ :ap | | dist |
		dist _ ap dist: (self griddedPoint: ap).
		tweak _ (self griddedPoint: ap) - ap.
		dist < minDist ifTrue: [ best _ tweak ].
		tweaks add: tweak.
	].
	tweaks sortedCounts first key > 1
		ifTrue: [ tweak _ tweaks sortedCounts first value ]
		ifFalse: [ tweak _ best ].
	self position: (self position + tweak) asIntegerPoint.