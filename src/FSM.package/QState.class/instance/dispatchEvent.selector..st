private
dispatchEvent: anEvent selector: selector
	| retval |
	retval _ fsm dispatchEvent: anEvent selector: selector.
	self assert: [ retval isNil or: [ retval isQState ]].
	^retval