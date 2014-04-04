arrow forms
closeThis: array
| bcurvesOut remaining bcurves gaps |
bcurves := OrderedCollection new.
bcurvesOut:= OrderedCollection new.
bcurvesOut size. (array size / 3). 
gaps:= OrderedCollection new.
remaining := array. 
self assert: array size \\ 3 = 0.
array size / 3 timesRepeat: 
	[bcurves add: (remaining first: 3).
	remaining:= remaining allButFirst: 3].
bcurves doWithIndex: [:c :i | 
	| startPt endPt |
	bcurvesOut add: c.
	i> 1 ifTrue: [
		startPt:=(bcurves at: i ) first.
		endPt:= (bcurves at: i-1 ) last.
		startPt = endPt ifFalse: [
			gaps add: i.
			bcurvesOut add: {endPt. endPt. startPt}.
			]
		]
	ifFalse:[
		"i=1"
		startPt:= (bcurves last ) last.
		endPt:=(bcurves first ) first.
		startPt = endPt ifFalse: [
			bcurvesOut add: {endPt. endPt. startPt}.
			]

		]
	
	].
^ 
bcurvesOut  gather: [ :each | each ] 