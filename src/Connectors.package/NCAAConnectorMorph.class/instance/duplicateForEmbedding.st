dropping/grabbing
duplicateForEmbedding
	| logger proto |
	logger _ self valueOfProperty: #logger ifAbsent: [].
	self removeProperty: #logger.
	proto _ super duplicateForEmbedding.
	self setProperty: #logger toValue: logger.
	proto setProperty: #logger toValue: logger.	"share my logger if any but copy the types"
	^proto.