event handling
mouseDown: evt
	self reset.
	self resetFilter.
	self hotspot: (start := evt position).
	evt hand newMouseFocus: self.
	evt hand newKeyboardFocus: self.
	"Cursor blank show."