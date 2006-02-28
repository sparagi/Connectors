instance creation
startWiringVia: selector label: aString
	| newMe |
	newMe _ self perform: selector.
	newMe name: aString.
	newMe startWiring.