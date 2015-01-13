*connectors-geometry
intersectionsWithLineFrom: start to: end
	"Answer the set of intersections, if any"
	| retval l i |
	retval _ Set new: 4.
	l _ LineSegment from: start to: end.
	self lineSegmentsDo: [ :p1 :p2 | | s |
		s _ LineSegment from: p1 to: p2.
		i _ s intersectionWith: l.
		i ifNotNil: [ retval add: i ].
	].
	^retval