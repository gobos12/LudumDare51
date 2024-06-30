/// @description Insert description here
// You can write your code in this editor

state_machine.step()
event_inherited()

if (obj_player.state_machine.state_name == "30"){
	isOpenable = true;
}
else
	isOpenable = false;

if (interacts && mouse_check_button_released(mb_any) && !(obj_player.state_machine.state_name == "Transition")) {

	if (opened) {
		if (abstract_interact.item.Type == "scissors" && !isCut) {
			isCut = true;
			abstract_interact.item.in_purg = true
			obj_tm.image_index = 5
			obj_timeMachine.puzzlesDeactivated++;
			isOpenable = false; // no longer interactable
		}
	}
	else if (!isRepaired) {
		if (!gear0Placed && (item.Type == "gear0")) {
			abstract_interact.item.in_purg = true
			gear0Placed = true;
			isOpenable = false;
			if(!gear1Placed) {
				obj_tm.image_index = 2
			}
			else if(gear1Placed) obj_tm.image_index = 3
		}
		if (!gear1Placed && (item.Type == "gear1")) {
			abstract_interact.item.in_purg = true
			gear1Placed = true;
			isOpenable = false;
			if(!gear0Placed) obj_tm.image_index = 1
			else if(gear0Placed) obj_tm.image_index = 3
		}
	}
	
	interacts = false
}

if (gear0Placed && gear1Placed && !isFixed) {
	isRepaired = true;
	obj_timeMachine.puzzlesFinished++;	
	isFixed = true
}

if ((obj_player.state_machine.state_name == "Transition")) {
	isFixed = false
	isRepaired = false
	isCut = false
	opened = false
	gear0Placed = false
	gear1Placed = false
	obj_tm.image_index = 0
	
}


