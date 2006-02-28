WiW support
fixMorphicLayer
	(super morphicLayerNumber) ~= (self morphicLayerNumber)
		ifTrue: [ | oldOwner |
			(oldOwner _ owner) ifNotNil: [ 
				oldOwner removeMorph: self.
				oldOwner addMorphInLayer: self.
			]
		]. 