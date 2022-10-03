/// @description Insert description here
// You can write your code in this editor

state_machine.step()
event_inherited()
image_index = 0

if (interacts && mouse_check_button_released(mb_any) && !isProcessing) { // ArrayUtility().contains(chemicals, tag)) {
	beaker.in_purg = true; 
	isProcessing = true;
	input = tag
	
	bubbles = instance_create_layer(x + 50, y - 150, "Items_In_Use", obj_bubbles)
	
	if(beaker.item_tag == "omega"){
		alarm[0] = room_speed * (1 * 1.5);
	}
	else if(beaker.item_tag == "sigma"){
		alarm[1] = room_speed * (3 * 1.5);
	}
	else if(beaker.item_tag == "pi"){
		alarm[2] = room_speed * (5 * 1.5);
	}
	
	interacts = false;
}

if (isProcessing)
	audio_play_sound(snd_centrifuge, 32, true, .025, .2)
else
	audio_stop_sound(snd_centrifuge)
