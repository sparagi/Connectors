accessing
beAllFont: aFont
	self editor selection isEmptyOrNil ifTrue: [ self editor selectAll ].
	textStyle _ TextStyle fontArray: (Array with: aFont).
	self releaseCachedState; changed