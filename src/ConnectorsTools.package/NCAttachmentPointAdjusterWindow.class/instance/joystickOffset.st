private
joystickOffset
	| xShift yShift |
	xShift _ joystick leftRight * (self gridModulus x / 3.125).
	yShift _ joystick upDown * (self gridModulus y / 3.125) negated.
	^xShift @ yShift
