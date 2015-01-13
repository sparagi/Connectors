arrows
arrowForms
	arrowForms ifNotNil: [ ^arrowForms ].
	arrowForms _ self arrowContours withIndexCollect: [ :ac :aci | | form rect ext offset ji |
		rect _ (Rectangle encompassing: ac) rounded.
		ext _ rect extent max: 4@4.
		form _ Form extent: rect extent depth: 1.
		ji _ (arrows at: aci) joinIndex.
		((BalloonCanvas on: form) asShadowDrawingCanvas: Color black)
			transformBy: (MatrixTransform2x3 withOffset: rect origin negated)
			during: [ :canvas |
				canvas aaLevel: 4; deferred: true.
				canvas 
					drawGeneralBezierShape: { { ac at: ji. ac at: ji. ac first }. ac}
					color: Color black
					borderWidth: 1
					borderColor: Color black.
				canvas flush.
			].
		form offset: rect origin
	].
	^arrowForms