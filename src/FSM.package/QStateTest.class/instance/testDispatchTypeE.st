Tests
testDispatchTypeE
	fsm dispatch: #E.
	self assert: fsm transitions last = #(#S11 #E #S211).
	self assert: fsm events 
				= { 
						nil -> #stateInitial:.
						#entry -> #stateS0:.
						#init -> #stateS0:.
						#entry -> #stateS1:.
						#init -> #stateS1:.
						#entry -> #stateS11:.
						#init -> #stateS11:.
						#E -> #stateS11:.
						#E -> #stateS1:.
						#E -> #stateS0:.
						#exit -> #stateS11:.
						#exit -> #stateS1:.
						#entry -> #stateS2:.
						#entry -> #stateS21:.
						#entry -> #stateS211:.
						#init -> #stateS211:} asOrderedCollection