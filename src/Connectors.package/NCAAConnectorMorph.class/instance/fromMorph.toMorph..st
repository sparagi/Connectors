initialization
fromMorph: startMorph toMorph: endMorph 
	| morphs |
	morphs _  { 
				startMorph.
				endMorph}.
	constraints with: morphs
		do: [:c :m | c attachTo: m at: m center ].
	self setCorrectOwnerForConnections: morphs.
	self trigger: #createdConnected