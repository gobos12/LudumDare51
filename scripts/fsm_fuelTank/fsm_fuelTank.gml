// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function fsm_fuelTank() {

	var states = {} // struct initialization
	static DN = function () {} // function that does nothing
	
	states[$ "Empty"] = new State (
		DN,
		function (target, state_machine) {
			if (target.isFueled) {
				state_machine.transition("Fueled");
			}
			if (target.isAflame) {
				state_machine.transition("Aflame");
			}
			if (target.isNeutralized) {
				state_machine.transition("Neutralized");
			}
		},
		DN
	)
	
	states[$ "Fueled"] = new State (
		function (target, state_machine) {
			target.isFueled = true;
		},
		DN,
		DN
	)
	
	states[$ "Aflame"] = new State (
		function (target, state_machine) {
			target.isAflame = true;
		},
		DN,
		DN
	)
	
	states[$ "Neutralized"] = new State (
		function (target, state_machine) {
			target.isNeutralized = true;
		},
		DN,
		DN
	)
	
	states[$ "Init"] = new State (
		DN,
		function (target, state_machine) {
			state_machine.transition("Empty");
		},
		DN
	)

	return states;
}