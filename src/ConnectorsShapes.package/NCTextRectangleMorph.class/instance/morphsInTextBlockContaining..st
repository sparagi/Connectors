private
morphsInTextBlockContaining: aMorph
	| first last |
	first _ submorphs indexOf: aMorph.
	[ first > 1 and: [ (submorphs at: first) isLineMorph not ]  ] whileTrue: [ first _ first - 1 ].
	"now first points to the line before the block or (first) AM"
	last _ (first + 1) min: submorphs size.
	[ last < submorphs size and: [ (submorphs at: last) isLineMorph not  ]] whileTrue: [ last _ last + 1 ].
	"now last points to the line after the block or (last) AM"
	((first ~= last) and: [ ((submorphs at: last) class == (submorphs at: first) class) ]) ifTrue: [ first _ first + 1 ].
	^submorphs copyFrom: first to: last