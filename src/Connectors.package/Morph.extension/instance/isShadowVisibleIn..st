*connectors-geometry
isShadowVisibleIn: aRectangle
	"aRectangle is in my coordinate system"
	| myShadow patch |
	myShadow _ self shadowForm.
	patch _ myShadow contentsOfArea: (aRectangle translateBy: bounds origin negated).
	^patch primCountBits ~= 0.
