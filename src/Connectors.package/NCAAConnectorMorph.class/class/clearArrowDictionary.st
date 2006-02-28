arrows
clearArrowDictionary
	ArrowGlyphs ifNil: [ ^ArrowGlyphs _ Dictionary new ].
	ArrowGlyphs keysAndValuesRemove: [ :k :v | true ];
		changed: #arrowsChanged.
