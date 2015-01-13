stepping and presenter
step
	| newCenter |
	dragStartPoint ifNotNil: [ ^self ].
	newCenter _ getPoint value rounded.
	(self center ~= newCenter) ifTrue: [ self center: newCenter ].