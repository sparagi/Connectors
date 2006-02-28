structure
jumpToOwner: newOwner
	| transform |
	transform _ (owner ifNil: [ self currentWorld ]) transformFromWorld composedWithLocal:
		newOwner transformFromWorld inverseTransformation.
	self transformedBy: transform.
	newOwner addMorphFront: self.
