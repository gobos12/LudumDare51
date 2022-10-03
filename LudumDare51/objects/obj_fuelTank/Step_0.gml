/// @description Insert description here
// You can write your code in this editor

state_machine.step()

fuelType = tag

if (interacts && isEmpty()) {
	if (fuelType == correctFuelType) {
		isFueled = true;
		show_debug_message("fueled")

		obj_timeMachine.puzzlesFinished++;
	}
	else if (ds_list_find_index(fuelOptions, fuelType) != -1) {
		isAflame = true;
	}
	else if (fuelType == chemicalName) {
		// More conditions required to see if outputChemical came from correct reactant
		isNeutralized = true;
		obj_timeMachine.puzzlesDeactivated++;
	}
}




