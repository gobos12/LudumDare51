/// @description Insert description here
// You can write your code in this editor

if (grabbed = true)
{

	self.x = mouse_x
	self.y = mouse_y
	
}

if (audio_sound_get_track_position(Variety_of_Clicks) >= 4.3)
{
	audio_stop_sound(Variety_of_Clicks)
}