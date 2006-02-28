menus
setGlyph: anArrowGlyph forEnd: endIndex
	| newArrows |
	newArrows _ line arrows copy.
	newArrows at: endIndex put: anArrowGlyph.
	line arrows: newArrows