constraints
firstInput
	| ips |
	ips _ self inputs.
	^ips isEmpty ifTrue: [ ] ifFalse: [ ips first ] 