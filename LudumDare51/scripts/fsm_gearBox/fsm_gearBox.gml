// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function fsm_gearBox() {
	
	var states = {} // struct initialization
	static DN = function () {} // function that does nothing
	
	states[$ "Empty"] = new State (
		DN,
		function (target, state_machine) {
			if (target.isRepaired) {
				state_machine.transition("Repaired");
			}
			if (target.isCut) {
				state_machine.transition("WireCut");
			}
		},
		DN
	)
	
	states[$ "Repaired"] = new State (
		function (target, state_machine) {
			target.isRepaired = true;
		},
		DN,
		DN
	)
	
	states[$ "WireCut"] = new State (
		function (target, state_machine) {
			target.isCut = true;
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