Tests
testDispatchTypeH1
	self should: [ fsm dispatch: #H ] raise: Error.
