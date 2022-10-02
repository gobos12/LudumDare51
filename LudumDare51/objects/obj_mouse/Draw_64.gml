/// @description Insert description here
// You can write your code in this editor

draw_set_color(c_black)

var vx = camera_get_view_x(view_camera[1]);
var vy = camera_get_view_y(view_camera[1]);
draw_text(vx + 5, vy + 5, "SCORE" + string(score));

