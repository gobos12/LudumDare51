/// @description Insert description here
// You can write your code in this editor

state_machine.step();

if (transitioning && !transitionStarted) {
	transitionStarted = true
	alarm[0] = room_speed * 3;
}

show_debug_message(state_machine.state_name)