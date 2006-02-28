*connectors-submorphs-add/remove
ensureMorph: back behind: front
	"Add a morph to the list of submorphs behind the specified morph,
	but only if it isn't already behind.
	Assume that it is more common for newMorph to already be in front"
	| backIndex i |
	backIndex _ 0.
	i _ submorphs size.
	"back to front search"
	submorphs reverseDo: [ :ea |
		ea == back
			ifTrue: [ backIndex _ i ].
		ea == front
			ifTrue: [ backIndex = 0
				ifFalse: [ ^self "already in front" ]
				ifTrue: [ ^self privateAddMorph: back atIndex: i + 1  ]
			].
		i _ i - 1.
 	].
