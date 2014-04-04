drawing
drawSegmentedCurveOnAACanvas: aaCanvas canvas: aCanvas isShadow: isShadow 
	| c bw bc initialPair middlep |
	c := isShadow ifTrue: [aCanvas shadowColor] ifFalse: [self fillStyle].
	bw := self borderWidth.
	bc := isShadow ifTrue: [aCanvas shadowColor] ifFalse: [self borderColor].
	bw > (self lineWidth / 2) 
		ifTrue: 
			[c := nil.
			bw := (self lineWidth / 2) max: 1 ].
	self contours.
	(contours anySatisfy: [ :ctr | ctr isEmpty ]) ifTrue: [ ^self ].
true ifTrue:[
	self isDashed 
	ifFalse: [
		aaCanvas 
			drawPolygon: contours first , contours third
			fillStyle: c
			borderWidth: bw
			borderColor: bc.]
	ifTrue: [
		segments do: [:segment | 
			| startingOffset theta perpendicularVector |
			theta:= segment direction theta.
			theta:= (theta radiansToDegrees + 90) degreesToRadians.
			perpendicularVector:= theta cos @theta sin.
			initialPair := {segment start. segment start+ (perpendicularVector*lineWidth) } .
			middlep:= initialPair average.
			startingOffset:=0.
			startingOffset:= segment start doDashesTo: segment end  dashLength: 15 secondDashLength: 6 startingOffset: 0 block: [:from :to :stepVector | 
				| diff  |
				diff:= (from - middlep) .
				aaCanvas 
					drawPolygon: ((initialPair + diff) ,  ((initialPair + diff) + (stepVector)) reversed )   
					fillStyle: c 
					borderWidth: bw
					borderColor: bc ]]]].
					
		
true ifTrue: [
	aaCanvas 
		drawGeneralBezierShape: self bezierSegments
		color: c
		borderWidth: bw
		borderColor: bc]