accessing
acceptOnCR: aBoolean
	acceptOnCR _ aBoolean.
	self crAction: (aBoolean
		ifTrue: [ MessageSend receiver: self selector: #acceptContents ]
		ifFalse: [ ]).
