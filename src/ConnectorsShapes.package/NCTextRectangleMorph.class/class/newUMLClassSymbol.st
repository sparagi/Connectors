instance creation
newUMLClassSymbol
	"Answer an instance of me ready for use in a class diagram"
	"NCTextRectangleMorph newUMLClassSymbol openInHand"
	| newMe fonts |
	(newMe _ NCUMLDiagramMorph new)
		color: (Color yellow muchLighter);
		borderColor: Color black;
		borderWidth: 2;
		name: #Class;
		preferredConnection: #connectToNearestPointToCenter.
	fonts _ Preferences connectorsLabelFont textStyle.
	fonts ifNotNil: [ 
		(newMe setTextAt: 1 to: 'Class')
			beAllFont: (fonts fontOfSize: 19)
	].
	(newMe textMorphAt: 1)
		centered.
	^newMe
		