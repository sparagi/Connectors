private
width: x height: y type: collectionClass
	"Set the number of elements in the first and second dimension.
	collectionClass can be Array or String or ByteArray."

	| newContents oldWidth oldHeight |
	contents ifNil: [
		contents _ collectionClass new: x * y.
		width _ x.
		height _ y.
		^self.
	].
	"trickier... have to resize"

	oldWidth _ self width.
	oldHeight _ self height.
	newContents _ collectionClass new: x * y.

	1 to: (oldHeight min: y) do: [ :row |
		1 to: (oldWidth min: x) do: [ :col |
			newContents
				at: (row - 1 * x) + col
				put: (contents at: (row - 1 * oldWidth) + col) 
		]
	].
	contents _ newContents.
	width _ x.
	height _ y.
	