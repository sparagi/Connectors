accessing
fillStyle: n 
	self lineMorphs
		do: [:ea | | bs |
			bs _ ea borderStyle.
			ea fillStyle: n.
			ea borderStyle: bs ].
	super fillStyle: n 