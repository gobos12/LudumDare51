/// @description Insert description here
// You can write your code in this editor

state_machine.step()
event_inherited()

if (obj_player.state_machine.state_name == "30")
	isOpenable = true;
else
	isOpenable = false;

if (interacts && mouse_check_button_released(mb_any)) {
	if (isOpen) {
		if (tag == "obj_scissors" && !isCut) {
			isCut = true;
			obj_timeMachine.puzzlesDeactivated++;
			isOpenable = false; // no longer interactable
		}
	}
	else if (!isRepaired) {
		show_debug_message(gear0Placed)
		if (!gear0Placed && (gear.gear == 0)) {
			
			gear0Placed = true;
			isOpenable = false;
			if(!gear1Placed) {
				obj_tm.image_index = 2
			}
			else if(gear1Placed) obj_tm.image_index = 3
		}
		if (!gear1Placed && (gear.gear == 1)) {
			gear1Placed = true;
			isOpenable = false;
			if(!gear0Placed) obj_tm.image_index = 1
			else if(gear0Placed) obj_tm.image_index = 3
		}
	}
}

if (gear0Placed && gear1Placed) {
	isRepaired = true;
	obj_timeMachine.puzzlesFinished++;	
}


