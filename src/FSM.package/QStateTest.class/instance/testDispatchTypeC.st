Tests
testDispatchTypeC
	fsm dispatch: #C.
	self assert: fsm transitions last = #(#S11 #C #S211).
	self assert: fsm events 
				= { 
						nil -> #stateInitial:.
						#entry -> #stateS0:.
						#init -> #stateS0:.
						#entry -> #stateS1:.
						#init -> #stateS1:.
						#entry -> #stateS11:.
						#init -> #stateS11:.
						#C -> #stateS11:.
						#C -> #stateS1:.
						#exit -> #stateS11:.
						#exit -> #stateS1:.
						#entry -> #stateS2:.
						#init -> #stateS2:.
						#entry -> #stateS21:.
						#init -> #stateS21:.
						#entry -> #stateS211:.
						#init -> #stateS211:} asOrderedCollection