*connectors
asFormWithExtent: extent fgColor: fgColor bgColor: bgColor depth: depth replaceColor: replaceColorFlag
	| form canvas transform |
	transform _ self transformForExtent: extent.
	form _ Form extent:  extent depth: depth.
	form fillColor: bgColor.
	canvas _ BalloonCanvas on: form.
	canvas aaLevel: 4.
	canvas transformBy: transform.
	self drawOn: canvas fgColor: fgColor.
	^ form