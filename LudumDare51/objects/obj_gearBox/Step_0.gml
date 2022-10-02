/// @description Insert description here
// You can write your code in this editor

state_machine.step()

if (obj_player.state_machine.state_name == "30")
	isOpenable = true;
else
	isOpenable = false;

if (interacts) {
	if (isOpen) {
		if (tag == "obj_scissors" && !isCut) {
			isCut = true;
			obj_timeMachine.puzzlesDeactivated++;
		}
	}
	else if (!isRepaired) {
		if (!gear0Placed && (tag == "obj_gear0")) {
			gear0Placed = true;
			isOpenable = false;
		}
		if (!gear1Placed && (tag == "obj_gear1")) {
			gear1Placed = true;
			isOpenable = false;
		}
	}
}

if (gear0Placed && gear1Placed) {
	isRepaired = true;
	obj_timeMachine.puzzlesFinished++;	
}


