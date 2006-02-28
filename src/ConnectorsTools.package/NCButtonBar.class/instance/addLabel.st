label
addLabel
	| labelString |
	labelString _ FillInTheBlank request: 'Enter label:'.
	labelString isEmpty ifFalse: [ self addLabel: labelString ]