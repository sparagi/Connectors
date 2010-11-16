*connectors-naming
innocuousName
	"Choose an innocuous name for the receiver -- one that does not end in the word Morph"

	| className allKnownNames |
	className := self defaultNameStemForInstances.
	(className size > 5 and: [className endsWith: 'Morph'])
		ifTrue: [className := className copyFrom: 1 to: className size - 5].
	(className size > 2 and: [ className beginsWith: 'NC'])
		ifTrue: [ className := className copyFrom: 3 to: className size]. "Get rid of NC"

	className := className asString translated.
	allKnownNames := self world ifNil: [OrderedCollection new] ifNotNil: [self world allKnownNames].
	^ Utilities keyLike: className asString satisfying:
		[:aName | (allKnownNames includes: aName) not]