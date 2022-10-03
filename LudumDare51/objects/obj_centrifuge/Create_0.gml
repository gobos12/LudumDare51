/// @description Insert description here
// You can write your code in this editor

image_index = 0
image_speed = 0

state_machine = new StateMachine(self, fsm_centrifuge(), "Init");
event_inherited()

randomize()

// Constant parallel arrays
chemicals = ["obj_chemb", "obj_cheme", "obj_chemp"]
processTimes = [21, 23, 25];
input = "NONE"
output = "NONE"

ranIndex = irandom_range(0, array_length(chemicals) - 1)
correctChemical = chemicals[ranIndex]
duration = processTimes[ranIndex]



