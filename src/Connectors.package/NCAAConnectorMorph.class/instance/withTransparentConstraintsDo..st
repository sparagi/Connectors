drawing
withTransparentConstraintsDo: aBlock
	"Make my constraints transparent and then evaluate the block."
	| oldColors retval |
	oldColors _ constraints collect: [ :ea | ea fillStyle ].
	constraints do: [ :ea | ea fillStyle: Color transparent; computeLineAttachmentPoint; forceRedraw ].
	retval _ aBlock ensure: [
		constraints with: oldColors do: [ :constraint :ccolor | constraint fillStyle: ccolor ]].
	^retval