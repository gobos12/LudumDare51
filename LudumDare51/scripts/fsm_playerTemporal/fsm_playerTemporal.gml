// Script assets have changed for v2.3.0 see
// https://help.yoyogames.com/hc/en-us/articles/360005277377 for more information
function fsm_playerTemporal(){

	var states = {} // struct initialization
	static DN = function () {} // function that does nothing
	
	states[$ "10"] = new State (
		function (target, state_machine) {
			obj_countdown.resetForwardTime();
		},
		function (target, state_machine) {
			if (obj_countdown.getTime() <= 0) {
					state_machine.transition("Transition");
				}
		},
		DN	
	)
	
	states[$ "20"] = new State (
		function (target, state_machine) {
			obj_countdown.resetForwardTime();
		},
		function (target, state_machine) {
			if (obj_countdown.getTime() <= 15) {
				state_machine.transition("10");
			}
		},
		DN
	)
	
	states[$ "30"] = new State (
		function (target, state_machine) {
			obj_countdown.resetForwardTime();
		},
		function (target, state_machine) {
			if (obj_countdown.getTime() <= 30) {
				state_machine.transition("20");
			}
		},
		DN
	)
	
	states[$ "Endgame"] = new State (
		DN,
		DN,
		DN
	)
	
	states[$ "Init"] = new State (
		DN,
		function (target, state_machine) {
			state_machine.transition("10");
		},
		DN
	)
	
	states [$ "Transition"] = new State (
		function (target, state_machine) {
			target.transitioning = true;
		},
		function (target, state_machine) {
			if (target.transitioning = false) {
				switch (obj_timeMachine.state_machine.state_name) {
						case "Stage10": 
							state_machine.transition("10");
							break
						case "Stage20":
							state_machine.transition("20");
							break
						case "Stage30":
							state_machine.transition("30");
							break;
						case "Disabled":
							state_machine.transition("Endgame");
							break;
				}
			}
		},
		DN
	)

	 return states
}