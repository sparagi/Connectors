undo
undoCommand
	| cmd args |
	cmd _ Command new cmdWording: 'align morphs'.
	args _ OrderedCollection new.
	moved keysAndValuesDo: [ :m :b |
		args add: { m. b. m bounds. m owner. m owner morphPreceding: m }
	].
	cmd undoTarget: self selector: #undoMove:redo:args: arguments: { cmd. false. args }.
	^cmd