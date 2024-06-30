// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function fsm_centrifuge() {
	
	var states = {} // struct initialization
	static DN = function () {} // function that does nothing
	
	states[$ "Empty"] = new State (
		DN,
		function (target, state_machine) {
			if (target.isProcessing) {
				state_machine.transition("Processing");
			}
		},
		DN
	)
	
	states[$ "Processing"] = new State (
		function (target, state_machine) {
			target.isProcessing = true;
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