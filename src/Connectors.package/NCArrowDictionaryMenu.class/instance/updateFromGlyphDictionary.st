menu commands
updateFromGlyphDictionary
	| currentName formDict |
	currentName := self nameOfGraphic.
	formDict _ self buildFormDict.
	currentIndex _ entryNames indexOf: currentName ifAbsent: [ 1].
	self updateThumbnail.
	^formDict.
