Tests
testDispatchTypeA
	fsm dispatch: #A.
	self assert: fsm transitions last = #(#S11 #A #S11).
	self assert: fsm events 
				= { 
						nil -> #stateInitial:.
						#entry -> #stateS0:.
						#init -> #stateS0:.
						#entry -> #stateS1:.
						#init -> #stateS1:.
						#entry -> #stateS11:.
						#init -> #stateS11:.
						#A -> #stateS11:.
						#A -> #stateS1:.
						#exit -> #stateS11:.
						#exit -> #stateS1:.
						#entry -> #stateS1:.
						#init -> #stateS1:.
						#entry -> #stateS11:.
						#init -> #stateS11:} asOrderedCollection