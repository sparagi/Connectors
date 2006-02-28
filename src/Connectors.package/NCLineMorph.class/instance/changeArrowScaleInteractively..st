arrows
changeArrowScaleInteractively: evt
	| handle origin aHand oldScales scaleDelta newScales |
	aHand _ evt ifNil: [self primaryHand] ifNotNil: [evt hand].
	origin _ aHand position.
	oldScales _ self arrowScales.
	handle _ HandleMorph new
		forEachPointDo:
			[:newPoint | handle removeAllMorphs.
			handle addMorph:
				(LineMorph from: origin to: newPoint color: Color black width: 1).
			scaleDelta _ ((newPoint - origin) / 100.0).
			newScales _ oldScales + scaleDelta.
			self arrowScales: newScales.
		]
		lastPointDo:
			[:newPoint | handle deleteBalloon.
			self halo ifNotNilDo: [:halo | halo addHandles].
			self rememberCommand:
				(Command new cmdWording: 'arrow scale change';
					undoTarget: self selector: #arrowScales: argument: oldScales;
					redoTarget: self selector: #arrowScales: argument: newScales)].
	aHand attachMorph: handle.
	handle setProperty: #helpAtCenter toValue: true.
	handle showBalloon:
'Move cursor farther from
this point to increase the size of the arrows.
Click when done.' hand: evt hand.
	handle startStepping