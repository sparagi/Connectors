menus
changeLineColor: evt
	| aHand |
	aHand _ evt ifNotNil: [evt hand] ifNil: [self primaryHand].
	self changeColorTarget: self selector: #lineColor: originalColor: self lineColor hand: aHand