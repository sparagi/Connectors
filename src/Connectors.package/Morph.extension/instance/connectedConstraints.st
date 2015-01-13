*connectors-queries
connectedConstraints
	"Answer the constraints that have me as an input"
	| retval ccs |
	ccs _ self valueOfProperty: #connectedConstraints ifAbsent: [ ^EmptyArray ].
	retval _ IdentitySet new: ccs size.
	ccs do: [ :ea | ea notNil ifTrue: [ retval add: ea ]].
	retval isEmpty ifTrue: [ self removeProperty: #connectedConstraints ].
	^retval