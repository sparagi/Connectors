dropping/grabbing
asButtonPrototype
	| logger proto |
	logger _ self valueOfProperty: #logger ifAbsent: [].
	self removeProperty: #logger.
	proto _ super asButtonPrototype
		removeProperty: #suspendedEventHandler;
		detach;
		straighten;
		setVertices: { 0@0. 50@0 };
		yourself.
	self setProperty: #logger toValue: logger.
	proto setProperty: #logger toValue: logger.	"share my logger if any but copy the types"
	^proto.