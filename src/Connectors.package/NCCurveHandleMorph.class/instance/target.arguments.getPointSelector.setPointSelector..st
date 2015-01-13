initialization
target: aMorph arguments: args getPointSelector: getPointSel setPointSelector: setPointSel
	getPoint _ WeakMessageSend receiver: aMorph selector: getPointSel arguments: args.
	setPoint _ WeakMessageSend receiver: aMorph selector: setPointSel arguments: args.
	targetPoint _ nil.
	self center: getPoint value.