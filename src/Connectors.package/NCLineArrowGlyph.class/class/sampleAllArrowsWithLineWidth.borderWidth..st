testing
sampleAllArrowsWithLineWidth: lw borderWidth: bw
	"NCLineArrowGlyph sampleAllArrows"

	| pos g samples button |
	pos _ 0@0.
	g _ nil.
	samples _ OrderedCollection new.
	(self class organization  listAtCategoryNamed: 'arrow forms') do: [ :sym |
		g _ self perform: sym.
		g scale: 100@100.
		samples add: (((g sampleFormForLineWidth: lw borderWidth: bw) asMorph) position: pos; openInWorld).
		pos _ pos + (50@20).
	].

	button _ (SimpleButtonMorph newWithLabel: 'kill them').
	samples add: button.
	button target: World; actionSelector: #deleteMorphs:; arguments: { samples }; openInHand.
	
	^samples