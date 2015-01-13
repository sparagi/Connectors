menus
reasonableForms
	| reasonableForms |
	reasonableForms _ Imports default images asOrderedCollection.
	reasonableForms addAll: (BitmapFillStyle allSubInstances collect:[:f| f form]).
	^reasonableForms