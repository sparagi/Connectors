event handling
stopHandleDrag: evt
	dragStartPoint _ desiredPoint _ nil.
	evt hand releaseMouseFocus: self.
	self triggerEvent: #dragStop.