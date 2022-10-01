// fsm for time machine

function fsm_timeMachine() {
	
	var states = {} // struct initialization
	static DN = function () {} // function that does nothing
	
	states[$ "Stage10"] = new State (
		function (target, state_machine) {
			target.isEnabled = true;
			target.puzzlesFinished = 0;
		},
		function (target, state_machine) {
			if (target.puzzlesFinished == 1) {
				state_machine.transition("Stage20");
			}
			else if ((target.puzzlesDeactivated == 2) && target.codeEntered) {
				state_machine.transition("Disabled");
			}
		},
		DN
	)
	
	states[$ "Stage20"] = new State (
		DN,
		function (target, state_machine) {
			if (target.puzzlesFinished == 2) {
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
	
	states[$ "Init"] = new State (
		DN,
		function (target, state_machine) {
			state_machine.transition("Stage10");
		},
		DN
	)

	 return states

}