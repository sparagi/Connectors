stepping and presenter
forceRedraw
	self lastTargetAngle: (self lastTargetAngle + 1e-6).
	lastTargetBounds _ nil.
	self changed.
