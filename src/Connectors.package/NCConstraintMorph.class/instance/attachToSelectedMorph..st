menus
attachToSelectedMorph: anEvent
	"Allow the user to select a new input"
	| handle targets highlights |
	highlights _ self highlightInputs.
	handle _ NewHandleMorph new 
		followHand: anEvent hand
		forEachPointDo: [ :newPoint |  ]
		lastPointDo: [ :newPoint | | localPoint choice |
			localPoint _ self globalPointToLocal: newPoint.
			highlights do: [ :ea | ea  delete ].
			targets _ self connectionTargetsAt: localPoint.
			targets _ targets copyWithout: handle.
			targets isEmpty
				ifTrue: [ self connectToAbsolutePoint: localPoint ]
				ifFalse: [ choice _ targets size = 1
					ifTrue: [ 1 ]
					ifFalse: [ (PopUpMenu labelArray: (targets collect: [ :ea | ea name ]))
							startUpWithCaption: 'Select Morph' ].
					choice > 0
						ifTrue: [ self attachUnobnoxiouslyTo: (targets at: choice) at: localPoint ]
				].
		].
	anEvent hand attachMorph: handle.
	handle startStepping.