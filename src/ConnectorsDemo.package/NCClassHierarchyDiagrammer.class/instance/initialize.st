initialization
initialize
	classMorphs _ WeakValueDictionary new.
	connections _ WeakValueDictionary new.
	random _ Random new.
	self pasteUp: self currentWorld.