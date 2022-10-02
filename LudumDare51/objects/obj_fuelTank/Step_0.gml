/// @description Insert description here
// You can write your code in this editor

state_machine.step()

tag = fuelType;
if (interacts && isEmpty()) {
	if (fuelType == correctFuelType) {
		isFueled = true;
		obj_timeMachine.puzzlesFinished++;
	}
	else if (ds_list_find_index(fuelOptions, fuelType) != -1) {
		isAflame = true;
	}
	else if (fuelType == obj_chemicalName) {
		// More conditions required to see if outputChemical came from correct reactant
		isNeutralized = true;
		obj_timeMachine.puzzlesDeactivated++;
	}
}



