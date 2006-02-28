menus
promptForFont
	| label |
	label _ self label.
	label ifNil: [ ^self ].
	TextStyle promptForFont: 'Choose label font:' andSendTo: label withSelector: #beAllFont: