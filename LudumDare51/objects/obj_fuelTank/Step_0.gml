/// @description Insert description here
// You can write your code in this editor

state_machine.step()
event_inherited();


fuelType = tag

if (interacts && mouse_check_button_released(mb_any) && !(obj_player.state_machine.state_name == "Transition")) {	
	if (item.Type == "can2") {
		isFueled = true;
		abstract_interact.item.in_purg = true
		obj_timeMachine.puzzlesFinished++;
		show_debug_message("fuel tank triggered")
		image_speed = 5;
		audio_play_sound(snd_glugGlug, 23, false, .5)
	}
	else if (item.Type == "can0" || item.Type == "can1") {//if (ds_list_find_index(fuelOptions, fuelType) != -1) {
		audio_play_sound(snd_glugGlug, 23, false, .5)
		isAflame = true;
		
		

	}
	else if (item.Type == "result"){
		// More conditions required to see if outputChemical came from correct reactant
		isNeutralized = true;
		obj_timeMachine.puzzlesDeactivated++;
		temp = instance_create_layer(x - 40, y - 40, "Items_In_Use", obj_fire)
		temp.image_xscale = 0.5
		temp.image_yscale = 0.5
	}
	
	interacts = false
}

else
{
	//audio_stop_sound(snd_glugGlug)
}


if ((obj_player.state_machine.state_name == "Transition")) {
	
	image_index = 0;
	if (isNeutralized) {
		instance_destroy(obj_fire)
	}
	isAflame = false;
	isNeutralized = false;
	isFueled = false;
}




