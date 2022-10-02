/// @description Insert description here
// You can write your code in this editor

self.x = mouse_x
self.y = mouse_y
<<<<<<< Updated upstream
=======

sprite_index = spr_cursor

if (x <= camera_get_view_x(view_camera[0]) + 100)
	sprite_index = spr_lcursor
	
if (x >= camera_get_view_x(view_camera[0]) + camera_get_view_width(view_camera[0]) - 100)
	sprite_index = spr_rcursor

>>>>>>> Stashed changes
