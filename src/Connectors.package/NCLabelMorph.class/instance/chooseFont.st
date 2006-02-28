menus
chooseFont
	| wasEmptyOrNil oldWrap oldHResizing |
	label isLocked ifTrue: [ ^self ].
	wasEmptyOrNil _  label selection isEmptyOrNil.
	wasEmptyOrNil ifTrue: [ label selectAll ].
	oldWrap _ label isWrapped.
	oldHResizing _ label hResizing.
	label wrapFlag: false.
	label chooseFont.
	label releaseCachedState; changed.
	self extent: label extent.
	wasEmptyOrNil ifTrue: [ label selectFrom: 1 to: 0 ].
	label wrapFlag: oldWrap.
	label hResizing: oldHResizing.
