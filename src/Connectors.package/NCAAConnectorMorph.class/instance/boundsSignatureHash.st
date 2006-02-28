connectors-labels
boundsSignatureHash
	| hash |
	hash _ line boundsSignatureHash.
	self validConnections do: [ :ea |
		hash _ (hash + ea boundsSignatureHash + ea owner identityHash) hashMultiply
	].
	^hash
