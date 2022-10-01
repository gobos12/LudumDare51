	/// @constructor
/// @description							Organizes a set of related behaviors for an object
///											Originally authored by Patrick Gelvin, and modified
/// @param {object}			 _target		The object to apply behaviors to
/// @param {[string: State]} _states		A map from state name to object 
/// @param {string}			 _initial_state	The first state the state machine should enter
function StateMachine(_target, _states, initial_state) constructor
{
	target = _target;
	states = _states;
	
	current_state = states[$ initial_state];
	if (!is_undefined(current_state))
	{
		current_state.enter(target, self);
	}
	
	state_name = initial_state
	
	static transition = function(_new_state, msg)
	{
		// Retrieve new state by name
		var new_state = states[$ _new_state];
		
		// Make sure new state can be found
		if (!is_undefined(new_state))
		{
			// Exit current state
			current_state.leave(target, self);
			
			// Switch state
			current_state = new_state;
			
			// Enter new state
			current_state.enter(target, self, msg);
			
			// Keep track of state name for debug
			state_name = _new_state;
		}
	}
	
	static step = function()
	{
		current_state.step(target, self);
	}
}
