constraints
computeLineAttachmentPoint
	^lineAttachmentPoint _ (submorphs isEmpty
		ifTrue: [ 0@0 ]
		ifFalse: [ (submorphs collect: [ :ea | ea lineAttachmentOffset * ea extent ]) min ]) rounded
