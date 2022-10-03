/// @description Insert description here
// You can write your code in this editor

state_machine.step()

fuelType = tag

if (interacts && isEmpty()) {
	if (fuelType == correctFuelType) {
		isFueled = true;
		obj_timeMachine.puzzlesFinished++;
		audio_play_sound(snd_glugGlug, 23, true, .25)
	}
	else if (ds_list_find_index(fuelOptions, fuelType) != -1) {
		isAflame = true;
		audio_play_sound(snd_glugGlug, 23, true, .25)
		image_speed = 5;
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

if (chemicalFire != pointer_null && (obj_player.state_machine.state_name == "Transition")) {
	instance_destroy(chemicalFire)
	chemicalFire = pointer_null
}
if ((obj_player.state_machine.state_name == "Transition")) {
	image_index = 0;
}



