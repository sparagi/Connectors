*connectors-connection
endShapeWidth: aWidth
	| originalWidth originalExtent where newExtent |
	where _ self referencePosition.
	originalWidth _ self valueOfProperty: #originalWidth ifAbsentPut: [ 2 ].
	originalExtent _ self valueOfProperty: #originalExtent ifAbsentPut: [ self extent ].
	newExtent _ (originalExtent * aWidth / originalWidth).
	self extent: newExtent.
	self referencePosition: where.
