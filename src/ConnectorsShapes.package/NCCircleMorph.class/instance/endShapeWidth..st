connection
endShapeWidth: anInteger
	| oldLineAttachment oldRotationCenter |
	oldLineAttachment _ self lineAttachmentOffset.
	oldRotationCenter _ self rotationCenter.
	super endShapeWidth: anInteger.
	self lineAttachmentOffset: oldLineAttachment.
	self rotationCenter: oldRotationCenter.
