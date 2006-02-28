queries
choices
	"Answer an alphabetized list of known user custom event selectors"

	| choices |
	choices _ NCAAConnectorMorph arrowDictionary keys asSortedCollection.
	^choices isEmpty ifTrue: [ #('no arrows') ] ifFalse: [ choices ]