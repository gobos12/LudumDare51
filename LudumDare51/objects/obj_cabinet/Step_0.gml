/// @description Insert description here
// You can write your code in this editor

if (self.x <= 1280 && obj_player.state_machine.state_name == "10")
{

	in_purg = true
	
}

if (obj_player.state_machine.state_name == "Transition")
{
	
	reset = true
	in_purg = false
	
}

if (in_purg)
{

	self.x = -1000
	self.y = -1000
	
}
else if (reset)
{
	
	self.x = initial_x
	self.y = initial_y
	reset = false
	
}
