/// @description Insert description here
// You can write your code in this editor

state_machine.step()

if (interacts && !isProcessing && ArrayUtility().contains(chemicals, tag)) {
	isProcessing = true;
	input = tag
	alarm[0] = room_speed * (duration * 1.5);
	
}




