menus
selectShapeMenu

	| menu |
	menu _ MenuMorph new layoutPolicy: TableLayout new.

	self class preMadeShapeNames do: [ :ea |
		| morph text ix mm sm |
		morph _ self class perform: ea.
		ix _ ea findString: 'Shape' startingAt: 1.
		ix _ ix = 0 ifTrue: [ ea size ] ifFalse: [ ix - 1 ].
		text _ (ea copyFrom: 1 to: ix) splitOnCapBoundaries.
		(mm _ MenuItemMorph new)
			layoutPolicy: TableLayout new;
			listDirection: #leftToRight;
			layoutInset: 3@3;
			wrapCentering: #topLeft;
			hResizing: #spaceFill;
			vResizing: #shrinkWrap;
			contents: ' ';
			target: self;
			selector: #addShape: ;
			arguments: { morph }.
		"The SketchMorph here is because my PolygonMorphs were getting stretched."
		sm _ SketchMorph withForm: morph imageForm.
		mm addMorphBack: sm.
		sm heading: -90.
		mm addMorphBack: AlignmentMorph newVariableTransparentSpacer.
		mm addMorphBack: ((StringMorph contents: text) font: Preferences standardMenuFont).
		menu addMorphBack: mm.
	].

	^menu