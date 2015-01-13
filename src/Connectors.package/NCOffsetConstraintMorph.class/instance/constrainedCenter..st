constraints
constrainedCenter: aPoint
	"Make sure that I stay within my owner's bounds. Answer a new center position"

	| newCenter newBounds myPU |
	myPU _ self pasteUpMorph.
	newCenter _ aPoint + offset.
	self isFlexed ifFalse: [
	newBounds _ bounds translateBy: newCenter - self center.
	myPU
		ifNotNil: [ newCenter _ newCenter + (newBounds amountToTranslateWithin: myPU bounds)].
	].
	^newCenter
