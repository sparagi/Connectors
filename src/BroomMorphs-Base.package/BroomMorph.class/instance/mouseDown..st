event handling
mouseDown: evt
	self reset.
	self hotspot: (start _ evt position).
	evt hand mouseFocus: self.
	evt hand keyboardFocus: self.
	"Cursor blank show."