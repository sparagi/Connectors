distribution
mczFullFileNames
	"ConnectorsFullDistroInfo mczFullFileNames"
	| dir0 dir1 dir2 dir3  dir lastName |
	dir0 _ FileDirectory default directoryNamed: 'package-cache'.
	dir1 _ self projectDirectory directoryNamed: 'MiscMorphic'.
	dir2 _ self projectDirectory directoryNamed: 'Etoys'.
	dir3 _ self projectDirectory directoryNamed: 'Connectors'.
	^self mczPackages collect: [ :s |
		dir _ { dir0. dir3. dir2. dir1. } detect: [ :d | (lastName _ (d lastNameFor: s extension: 'mcz')) notNil ].
		dir fullNameFor: lastName ]
