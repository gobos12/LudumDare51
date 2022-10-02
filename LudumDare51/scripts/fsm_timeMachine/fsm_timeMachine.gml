// fsm for time machine change

function fsm_timeMachine() {
	
	var states = {} // struct initialization
	static DN = function () {} // function that does nothing
	
	states[$ "Stage10"] = new State (
		function (target, state_machine) {
			target.isEnabled = true;
		},
		function (target, state_machine) {
			if (target.puzzle1Finished) {
				state_machine.transition("Stage20");
			}
			else if (target.puzzle1Broken && target.puzzle2Broken && target.codeEntered) {
				state_machine.transition("Disabled");
			}
		},
		DN
	)
	
	states[$ "Stage20"] = new State (
		DN,
		function (target, state_machine) {
			if (target.puzzle2Finished) {
				state_machine.transition("Stage30");
			}
		},
		DN
	)
	
	states[$ "Stage30"] = new State (
		DN,
		DN,
		DN
	)
	
	states[$ "Disabled"] = new State (
		function (target, state_machine) {
			target.isEnabled = false;
		},
		DN,
		DN
	)

}