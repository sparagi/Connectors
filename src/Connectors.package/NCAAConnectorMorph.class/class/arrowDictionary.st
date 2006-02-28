arrows
arrowDictionary
	^ArrowGlyphs ifNil: [
		ArrowGlyphs _ Dictionary new.
		self initializeArrowDictionary ].