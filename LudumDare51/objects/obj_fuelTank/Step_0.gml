/// @description Insert description here
// You can write your code in this editor

state_machine.step()

tag = fuelType;
if (interacts && isEmpty()) {
	if (fuelType == correctFuelType) {
		isFueled = true;
		obj_timeMachine.puzzlesFinished++;
		audio_play_sound(snd_glugGlug, 23, true, 1)
    image_speed = 5;
	}
	else if (ds_list_find_index(fuelOptions, fuelType) != -1) {
		isAflame = true;
		audio_play_sound(snd_glugGlug, 23, true, 1)
	}
	else if (fuelType == chemicalName) {
		// More conditions required to see if outputChemical came from correct reactant
		isNeutralized = true;
		obj_timeMachine.puzzlesDeactivated++;
	}
}



