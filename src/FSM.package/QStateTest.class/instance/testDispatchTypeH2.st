Tests
testDispatchTypeH2
	fsm myFoo: true.
	fsm dispatch: #H.
	self assert: (fsm transitions last = #(S11 H S11)).
	self assert: fsm myFoo not