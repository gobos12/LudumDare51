/// @description Insert description here
// You can write your code in this editor

if(obj_red_button.red_state == true){
	obj_button_manager.correct_buttons = true
	obj_timeMachine.puzzlesFinished++;
}
else{
	obj_blue_button.blue_state = false
	obj_yellow_button.yellow_state = false
	obj_red_button.red_state = false
}