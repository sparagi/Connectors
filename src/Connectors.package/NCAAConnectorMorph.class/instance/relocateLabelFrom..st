connectors-labels
relocateLabelFrom: aRectangle
	"Given a prospective label location, answer a new rectangle which doesn't overlap me"
	| newBounds |
	newBounds _ aRectangle.
	self validConnections do: [ :ea |
		newBounds _ ea relocateLabelFrom: newBounds.
	].
	newBounds _ line relocateLabelFrom: newBounds.
	^ newBounds
