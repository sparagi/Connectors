*connectors-connection
preferredConnectionSelector
	| pref |
	pref _ self valueOfProperty: #preferredConnection ifAbsent: [ ^nil ].
	^pref first