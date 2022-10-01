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
				state_machine.transition("10")
			}
		},
		DN
		
	)
	

}