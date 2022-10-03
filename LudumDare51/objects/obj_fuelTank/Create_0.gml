/// @description Insert description here
// You can write your code in this editor

state_machine = new StateMachine(self, fsm_fuelTank(), "Init");
event_inherited();

// randomize();

fuelOptions = ds_list_create();
ds_list_insert(fuelOptions, 0, "obj_gas0")
ds_list_insert(fuelOptions, 0, "obj_gas1")
ds_list_insert(fuelOptions, 0, "obj_gas2")
// ds_list_shuffle(fuelOptions)


chemicalName = "obj_result"


correctFuelType = "obj_gas2"


function isEmpty() {
	return !(isFueled || isAflame || isNeutralized)
}

//image_xscale = 1/4
//image_yscale = 1/4

//x = 1972
//y = 442

image_speed = 0;


