testing
showSamples
	"self showSamples"
	| pum line offset verts |
	"lineWidth borderWidth smooth curve"
	pum _ PasteUpMorph new bounds: (0@0 corner: 560@900).
	pum openInWorld.
	0 to: 10 do: [ :lw |
		0 to: 4 do: [ :bw |
			{true. false} do: [ :sc |
				offset _ ((bw * 100) + 20) @ ((lw * 80) + 20).
				sc ifTrue: [ offset _ offset + (0@ 40) ].
				verts _ { offset . offset + (40@20). offset + (80@0) }.
				line _ self vertices: verts
					lineWidth: (lw/4) + 0.25
					lineColor: Color blue
					borderWidth: bw
					borderColor: Color black.
				sc ifTrue: [ line beSmoothCurve ].
				pum addMorph: line
			]
		]
	]
		