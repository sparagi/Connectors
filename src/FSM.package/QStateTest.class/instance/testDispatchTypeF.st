Tests
testDispatchTypeF
	fsm dispatch: #F.
	self assert: fsm transitions last = #(#S11 #F #S211).
	self assert: fsm events 
				= { 
						nil -> #stateInitial:.
						#entry -> #stateS0:.
						#init -> #stateS0:.
						#entry -> #stateS1:.
						#init -> #stateS1:.
						#entry -> #stateS11:.
						#init -> #stateS11:.
						#F -> #stateS11:.
						#F -> #stateS1:.
						#exit -> #stateS11:.
						#exit -> #stateS1:.
						#entry -> #stateS2:.
						#entry -> #stateS21:.
						#entry -> #stateS211:.
						#init -> #stateS211:} asOrderedCollection