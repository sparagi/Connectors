meta-actions
duplicate
	| newMorph |
	newMorph _ super duplicate.
	newMorph detach.
	newMorph setProperty: #justDuplicated toValue: true.
	^newMorph