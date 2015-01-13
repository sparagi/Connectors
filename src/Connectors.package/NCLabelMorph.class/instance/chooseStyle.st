menus
chooseStyle
	| wasEmptyOrNil |
	label isLocked ifTrue: [ ^self ].
	wasEmptyOrNil _  label selection isEmptyOrNil.
	wasEmptyOrNil ifTrue: [ label selectAll ].
	label chooseStyle.
	wasEmptyOrNil ifTrue: [ label selectFrom: 1 to: 0 ].
