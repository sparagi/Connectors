menus
setActionSelector
	| newSel possibilities request |
	possibilities _ #(startWiring startWiringLabeled openInHand openInWorld)
		select: [ :ea | target respondsTo: ea ].
	request _ 'Please type the selector to be sent to
the target when this button is pressed.
Some possibilities:'.
	possibilities do: [ :ea | request _ request, '
· ', ea ].
	newSel _ FillInTheBlank
		request: request
		initialAnswer: actionSelector.
	newSel isEmpty ifFalse: [self actionSelector: newSel].
