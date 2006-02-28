connection
anchorPreferredConnection: sel at: aPoint
	"this is called at the end of the user selection of a relative or absolute preferred connection point"

	| target targets |

	targets _ (self pasteUpMorphOrWorld rootMorphsAt: aPoint)
		reject: [ :ea | (ea isHandleMorph)
			or: [ ea == owner
				or: [ ea == self
					or: [ (self allMorphs includes: ea)
						or: [ (ea isConstrainedBy: self) ] ] ] ] ].

	target _ targets isEmpty ifTrue: [ self pasteUpMorphOrWorld ] ifFalse: [ targets first ].

	^self anchorPreferredConnection: sel to: target at: aPoint