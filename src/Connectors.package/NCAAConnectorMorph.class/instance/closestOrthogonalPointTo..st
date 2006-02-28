geometry
closestOrthogonalPointTo: aPoint
	"first, find an intersection"
	|  intersections |
	intersections _ OrderedCollection new.
	intersections addAll: (self line intersectionsWith: (0@0 corner: aPoint)).
	intersections addAll: (self line intersectionsWith: (aPoint corner: ActiveWorld bounds extent)).	
	intersections isEmpty ifTrue: [ ^self closestPointTo: aPoint ].
	^intersections detectMin: [ :ea | ea dist: aPoint ] 