connection-callbacks
point: aPoint relativeTo: morph
	| world mtfm ctfm |
	world _ self world.
	ctfm _ self transformFrom: world.
	mtfm _ morph transformFrom: world.
	^mtfm globalPointToLocal: (ctfm localPointToGlobal: aPoint)