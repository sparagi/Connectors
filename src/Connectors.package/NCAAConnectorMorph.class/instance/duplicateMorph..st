meta-actions
duplicateMorph: evt
	| newMorph |
	newMorph _ super duplicateMorph: evt.
	newMorph setProperty: #justDuplicated toValue: true.
	^newMorph