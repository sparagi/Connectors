private
usedExtent
	| x y |
	x _ 0.
	y _ 0.
	self rowAndColumnValuesDo: [ :row :col :val |
		val ifNotNil: [ x _ x max: col. y _ y max: row ]
	].
	^x@y