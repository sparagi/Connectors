attachments-nk
attachUnobnoxiouslyTo: aMorph at: aPoint
	"If the attachment would make me overlap aMorph, move me away from aMorph's center."
 	| incr limit newBounds |
	self offset: 0@0.
	self center: aPoint.
	self attachTo: aMorph at: aPoint.	"sets constraint block"
	incr _ 0@1.
	limit _ 2000.
	newBounds _ self bounds.
	[ limit < 0 or: [ incr isZero ] ] whileFalse: [
		incr _ aMorph nudgeForLabel: newBounds.
		limit _ limit - 1.
		newBounds _ newBounds translateBy: incr.
	].
	self position: newBounds origin.
	self setOffset.