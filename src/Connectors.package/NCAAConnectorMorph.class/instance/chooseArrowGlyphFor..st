menus
chooseArrowGlyphFor: endIndex 
	| menu |
	menu _ NCArrowDictionaryMenu chooseArrowGlyphFor: self selector: #setGlyph:forEnd:.
	menu argument: endIndex
	