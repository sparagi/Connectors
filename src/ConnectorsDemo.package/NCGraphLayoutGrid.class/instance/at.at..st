accessing
at: x at: y
	"Answer the element at index x,y."

	| index |
	index _ self indexX: x y: y.
	^ contents at: index