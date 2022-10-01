/// @constructor
/// @description				Describes a behavior to run in a state machine. 
///								Originally authored by Patrick Gelvin, and modified
/// @param {function} _enter	(target, state_machine, msg) -> Called when entering state
/// @param {function} _step		(target, state_machine) -> Called every step while in state
/// @param {function} _leave	(target, state_machine) -> Called when leaving state


function State(_enter, _step, _leave) constructor
{
	enter = _enter;
	step = _step;
	leave = _leave;
}