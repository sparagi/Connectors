Tests
testDispatchTypeB
	fsm dispatch: #B.
	self assert: fsm transitions last = #(#S11 #B #S11).
	self assert: fsm events 
				= { 
						nil -> #stateInitial:.
						#entry -> #stateS0:.
						#init -> #stateS0:.
						#entry -> #stateS1:.
						#init -> #stateS1:.
						#entry -> #stateS11:.
						#init -> #stateS11:.
						#B -> #stateS11:.
						#B -> #stateS1:.
						#exit -> #stateS11:.
						#entry -> #stateS11:.
						#init -> #stateS11:} asOrderedCollection