Tests
testHierarchy
	| hierarchy |
	hierarchy _ fsm stateHierarchy.
	self assert: hierarchy = 'Top
	Initial
	S0
		S1
			S11
		S2
			S21
				S211
'.