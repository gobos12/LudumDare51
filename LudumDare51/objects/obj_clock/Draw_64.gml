/// @description Insert description here
// You can write your code in this editor

clock = draw_sprite_ext(spr_clock, 0, 0, -40, .5, .5, 0, c_white, 100);
draw_set_color(c_green);
draw_text(50, 10, string(obj_countdown.displayTime))

