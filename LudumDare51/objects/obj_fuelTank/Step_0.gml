/// @description Insert description here
// You can write your code in this editor

state_machine.step()
event_inherited();


fuelType = tag

if (interacts && !(obj_player.state_machine.state_name == "Transition")) {	
	if (gascan.fueltype == 2) {
		isFueled = true;
		obj_timeMachine.puzzlesFinished++;
		image_speed = 5;
		audio_play_sound(snd_glugGlug, 23, true, 1)
	}
	else if (gascan.fueltype == 0 || gascan.fueltype == 1) {//if (ds_list_find_index(fuelOptions, fuelType) != -1) {
		isAflame = true;
		audio_play_sound(snd_glugGlug, 23, true, 1)
		

	}
	else if (fuelType == chemicalName) {
		// More conditions required to see if outputChemical came from correct reactant
		isNeutralized = true;
		obj_timeMachine.puzzlesDeactivated++;
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



