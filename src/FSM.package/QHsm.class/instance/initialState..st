initialization
initialState: aStateName
	"Like in QHsm::QHsm()"
	myState _ self top.
	mySource _ self state: aStateName.