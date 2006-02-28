menus
changeLabel
	| label labelString |
	label _ self label.
	label ifNil: [ ^self ].
	labelString _ FillInTheBlank request: 'Enter label:' initialAnswer: label contents.
	labelString isEmpty ifFalse: [ label contents: labelString ]