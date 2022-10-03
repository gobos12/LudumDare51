/// @description Insert description here
// You can write your code in this editor

state_machine = new StateMachine(self, fsm_fuelTank(), "Init");
event_inherited();

randomize();

fuelOptions = ds_list_create();
ds_list_insert(fuelOptions, 0, "obj_gas0")
ds_list_insert(fuelOptions, 0, "obj_gas1")
ds_list_insert(fuelOptions, 0, "obj_gas2")
ds_list_shuffle(fuelOptions)

chemicalName = "obj_outputChemical"

correctFuelType = fuelOptions[| 0];


function isEmpty() {
	return !(isFueled || isAflame || isNeutralized)
}



