initialization
removeAll
	| toRemove |
	toRemove := Set new.
	toRemove addAll: connections.
	toRemove addAll: classMorphs.
	classMorphs _ WeakValueDictionary new.
	connections _ WeakValueDictionary new.
	self pasteUp removeAllMorphsIn: toRemove.
	^toRemove
