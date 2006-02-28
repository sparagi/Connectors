*connectors-geometry
isEntirelyWithinShadowForm: itsShadow

	| myShadow xorForm retval box |
	myShadow _ self shadowForm.
	box _ (myShadow boundingBox translateBy: myShadow offset)
		quickMerge:  (itsShadow boundingBox translateBy: itsShadow offset).
	xorForm _ Form extent: box extent depth: 1.
	xorForm copy: (self fullBounds translateBy: box origin negated)
		from: 0@0
		in: myShadow
		rule: Form over.
	xorForm
		copyBits: (itsShadow boundingBox translateBy: (itsShadow offset - box origin) negated) from: itsShadow at: 0@0 clippingBox: xorForm boundingBox rule: Form erase fillColor: nil.
	retval _ xorForm primCountBits = 0.
	"retval ifFalse: [ xorForm asMorph position: box origin; openInWorld ]."
	^retval 