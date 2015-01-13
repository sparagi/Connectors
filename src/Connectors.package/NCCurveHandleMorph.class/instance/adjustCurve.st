event handling
adjustCurve
	| retval |
	retval _ setPoint valueWithEnoughArguments: { desiredPoint }.
	targetPoint _ getPoint value.
	^retval