constraints
applyConstraint: aPoint 
	| input newBounds newCenter |
	(self pasteUpMorph isNil or: [ (input _ self input) isNil ])
		ifTrue: [^ super applyConstraint: aPoint].
	"self offset: 0 @ 0."
	newCenter _ self constrainedCenter: aPoint.
	newBounds _ self visibleBounds translateBy: newCenter - self center.
	self flag: #TODO. "need to deal with flexed labels"
	self isFlexed ifFalse: [
	newBounds _ input relocateLabelFrom: newBounds.
	].
	self position: newBounds origin.
