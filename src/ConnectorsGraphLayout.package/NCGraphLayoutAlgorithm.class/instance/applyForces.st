layout
applyForces
	| applied |
	applied _ 0.
	self nodes with: self forces
		do: [:node :force | | newBounds |
			(force x > 1.0 or: [ force y > 1.0 ]) ifTrue: [
				newBounds _ (node bounds translateBy: force) translatedToBeWithin: layoutMorph bounds.
				node position: newBounds origin asIntegerPoint.
				applied _ applied + 1.]
		 ].
	^applied