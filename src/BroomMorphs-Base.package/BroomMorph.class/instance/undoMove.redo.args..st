undo
undoMove: cmd redo: redo args: args
	"morph oldbounds newbounds oldowner oldpredecessor"
	cmd redoTarget: self selector: #undoMove:redo:args: arguments: { cmd. true. args }.
	args do: [ :a | | morph oldbounds newbounds oldowner oldpredecessor |
		morph _ a at: 1.
		oldbounds _ a at: 2.
		newbounds _ a at: 3.
		oldowner _ a at: 4.
		oldpredecessor _ a at: 5.
		oldowner ifNotNil: [ oldpredecessor ifNil: [ oldowner addMorphFront: morph ]
			ifNotNil: [ oldowner addMorph: morph after: oldpredecessor ]].
		morph bounds: (redo ifTrue: [ newbounds ] ifFalse: [ oldbounds ]).
		(morph isKindOf: SystemWindow) ifTrue: [ morph activate ].
	].