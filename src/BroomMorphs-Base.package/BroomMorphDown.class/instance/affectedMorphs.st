private
affectedMorphs
	"Answer all the morphs that I should be moving"
	| movedRect |
	movedRect _ self bounds encompass: hotspot x @ lastHotspot y.
	^ owner submorphs
		select: [:m | movedRect
				intersects: (Rectangle
						left: m bounds left
						right: m bounds right
						top: m bounds top
						bottom: m bounds top + 1)]