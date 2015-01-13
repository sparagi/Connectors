event handling
startHandleDrag: evt
	evt hand newMouseFocus: self.
	self center: evt position.
	desiredPoint _ getPoint value.
	offset _ desiredPoint - evt position.
	dragStartPoint _ evt position.
	self triggerEvent: #dragStart.