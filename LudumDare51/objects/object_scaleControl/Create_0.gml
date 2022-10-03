/// @description Insert description here
// You can write your code in this editor

base_width = 1280;
base_height = 720;
width = 948;
height = 533;

function  scale_canvas(bw, bh, cw, ch, center) {
	var _bw = argument0;
	var _bh = argument1;
	var _cw = argument2;
	var _ch = argument3;
	var _center = argument4;
	var _aspect = (_bw / _bh);

	if ((_cw / _aspect) > _ch)
    {
    window_set_size((_ch *_aspect), _ch);
    }
	else
	    {
	    window_set_size(_cw, (_cw / _aspect));
	    }
	if (_center)
	    {
	    window_center();
	    }

	view_wport[0] = min(window_get_width(), _bw);
	view_hport[0] = min(window_get_height(), _bh)
	surface_resize(application_surface, view_wport[0], view_hport[0]);
}




