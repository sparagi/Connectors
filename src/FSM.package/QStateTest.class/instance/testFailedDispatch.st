Tests
testFailedDispatch
	self should: [ fsm dispatch: 'whatever' ] raise: Error.
