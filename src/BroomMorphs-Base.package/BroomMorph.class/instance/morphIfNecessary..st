stepping and presenter
morphIfNecessary: yellowButtonPressed
	| pt delta threshold cls center |
	center _ yellowButtonPressed | centered.
	pt _ self center.
	threshold _ self width / 2.
	delta _ pt - start.
	cls _ delta x > threshold
				ifTrue: [center
						ifTrue: [CenterBroomMorphRight]
						ifFalse: [BroomMorphRight]]
				ifFalse: [delta x < threshold negated
						ifTrue: [center
								ifTrue: [CenterBroomMorphLeft]
								ifFalse: [BroomMorphLeft]]
						ifFalse: [delta y > threshold
								ifTrue: [center
										ifTrue: [CenterBroomMorphDown]
										ifFalse: [BroomMorphDown]]
								ifFalse: [delta y < threshold negated
										ifTrue: [center
												ifTrue: [CenterBroomMorphUp]
												ifFalse: [BroomMorphUp]]]]].
	cls
		ifNotNil: [self
				become: (self as: cls).
			self reset.
			unmoved addAll: self affectedMorphs]