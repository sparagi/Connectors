*connectors-converting
splitOnCapBoundaries
	| stream prev |
	stream _ WriteStream on: (self species new: self size * 2).
	prev _ self at: 1.
	self do: [ :c |
		(c = $:)
			ifTrue: [ stream nextPutAll: '...' ]
			ifFalse: [
				((c isUppercase) and: [ c isLowercase ~= prev isLowercase ])
					ifTrue: [ stream space; nextPut: c asLowercase ]
					ifFalse: [ stream nextPut: c ].
			].
		prev _ c.
	].
	^stream contents