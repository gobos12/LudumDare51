/// @description Insert description here
// You can write your code in this editor

state_machine.step()
event_inherited();

fuelType = tag

if (interacts && isEmpty() && !(obj_player.state_machine.state_name == "Transition")) {	
	if (fuelType == "obj_gas2") {
		isFueled = true;
		obj_timeMachine.puzzlesFinished++;
		image_speed = 5;
		audio_play_sound(snd_glugGlug, 23, true, .25)
	}
	else if (ds_list_find_index(fuelOptions, fuelType) != -1) {
		isAflame = true;
		audio_play_sound(snd_glugGlug, 23, true, .25)
		
	}
	else if (fuelType == chemicalName) {
		// ACTUAL FIRE
		isNeutralized = true;
		obj_timeMachine.puzzlesDeactivated++;
		chemicalFire = instance_create_layer(x - 100, y - 100, "Items_In_Use", obj_fire)
	}
}
else
{
	audio_stop_sound(snd_glugGlug)
}


if ((obj_player.state_machine.state_name == "Transition")) {
	image_index = 0;
	if (isNeutralized) {
		instance_destroy(chemicalFire)
		chemicalFire = pointer_null
	}
	isAflame = false;
	isNeutralized = false;
	isFueled = false;
}

tag = "NONE"



