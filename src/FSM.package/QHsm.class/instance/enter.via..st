private
enter: target via: entry
	"This is the common tail of #transitionDynamicallyTo:.
	Now we're in the LCA of mySource and target"
	"inLCA:"
	| sub |
	entry reverseDo: [ :s | s enter ].	"retrace the entry path in reverse order"
	myState _ sub _ target.
	[ (sub init) isNil ] whileTrue: [
		self assert: [ sub = myState superstate ] description: 'initial transition must go one level deep'.
		sub _ myState.
		sub enter.		"enter target"
	]