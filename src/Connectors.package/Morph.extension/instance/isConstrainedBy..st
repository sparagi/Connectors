*connectors-connection
isConstrainedBy: aMorph
	"Answer true if aMorph or any of its submorphs are an input to any of my constraints"
	| herSubmorphs |
	herSubmorphs _ aMorph allMorphs.
	^self constraints anySatisfy: [ :constraint | constraint hasAnyInputIn: herSubmorphs ]
