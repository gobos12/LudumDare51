/// @description Insert description here
// You can write your code in this editor

state_machine = new StateMachine(self, fsm_centrifuge(), "Init");
event_inherited()

randomize()

// Constant parallel arrays
chemicals = ["obj_chemb", "obj_cheme", "obj_chemp"]
processTimes = [16, 20, 24];

ranIndex = irandom_range(0, array_length(chemicals) - 1)
correctChemical = chemicals[ranIndex]
duration = processTime[ranIndex]

function isEmpty() {
	return !(isProcessing || isReady)
}


