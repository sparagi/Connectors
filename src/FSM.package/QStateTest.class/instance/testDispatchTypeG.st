Tests
testDispatchTypeG
	fsm dispatch: #G.
	self assert: fsm transitions last = #(#S11 #G #S211).
	self assert: fsm events 
				= { 
						nil -> #stateInitial:.
						#entry -> #stateS0:.
						#init -> #stateS0:.
						#entry -> #stateS1:.
						#init -> #stateS1:.
						#entry -> #stateS11:.
						#init -> #stateS11:.
						#G -> #stateS11:.
						#exit -> #stateS11:.
						#exit -> #stateS1:.
						#entry -> #stateS2:.
						#entry -> #stateS21:.
						#entry -> #stateS211:.
						#init -> #stateS211:} asOrderedCollection