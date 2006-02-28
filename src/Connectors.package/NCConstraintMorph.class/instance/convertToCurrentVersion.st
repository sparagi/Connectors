object fileIn
convertToCurrentVersion
	self convertToMessageSend.
	dieWithInput ifNil: [
		dieWithInput _ (self valueOfProperty: #dieWithInput ifAbsent: [ false ]).
		self removeProperty: #dieWithInput.
	].
