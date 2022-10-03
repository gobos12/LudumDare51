/// @description Insert description here
// You can write your code in this editor

	
		if(puzzlesFinished == 0) obj_player.state_machine.state_name = "10"
		if(puzzlesFinished == 1) obj_player.state_machine.state_name = "20"
		if(puzzlesFinished == 2) obj_player.state_machine.state_name = "30"
	
		puzzlesFinished = 0;
		puzzlesDeactivated = 0;
