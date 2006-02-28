*connectors-point functions
pointsLoopDo: aBlock X: xDelta Y: yDelta 
	"Implements the Bresenham plotting algorithm (IBM Systems 
	Journal, Vol. 4 No. 1, 1965). It chooses a principal direction, and 
	maintains a potential, P. When P's sign changes, it is time to move in 
	the minor direction as well. This particular version does not write the 
	first and last points, so that these can be called for as needed in client 
	code. "
	| dx dy px py P destX destY |
	dx _ xDelta sign.
	dy _ yDelta sign.
	px _ yDelta abs.
	py _ xDelta abs.
	destX _ self x.
	destY _ self y.
	py > px
		ifTrue: ["more horizontal"
			P _ py // 2.
			1
				to: py
				do: [:i | 
					destX _ destX + dx.
					(P _ P - px) < 0
						ifTrue: [destY _ destY + dy.
							P _ P + py].
					aBlock value: destX @ destY]]
		ifFalse: ["more vertical"
			P _ px // 2.
			1
				to: px
				do: [:i | 
					destY _ destY + dy.
					(P _ P - py) < 0
						ifTrue: [destX _ destX + dx.
							P _ P + px].
					aBlock value: destX @ destY]]