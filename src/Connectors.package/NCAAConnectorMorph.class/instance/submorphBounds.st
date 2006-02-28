layout
submorphBounds
	| rect |
	^line
		ifNotNil: [ rect _ (line bounds outsetBy: self selectionSlop).
			submorphs do: [ :m | m == line ifFalse: [ rect _ rect quickMerge: m fullBounds ]].
			rect ]
		ifNil: [ super bounds ]