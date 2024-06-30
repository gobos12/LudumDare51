/// @description Insert description here
// You can write your code in this editor

state_machine.step()
event_inherited()
image_index = 0

if (interacts && mouse_check_button_released(mb_any) && !isProcessing ) { // ArrayUtility().contains(chemicals, tag)) {
	
	

	input = tag
	
	bubbles = instance_create_layer(x + 50, y - 150, "Items_In_Use", obj_bubbles)
	
	if(abstract_interact.item.Type == "omega"){
		alarm[0] = room_speed * (21 * 1.5);
	}
	else if(abstract_interact.item.Type == "sigma"){
		alarm[1] = room_speed * (23 * 1.5);
	}
	else if(abstract_interact.item.Type == "pi"){
		alarm[2] = room_speed * (24 * 1.5);
		show_debug_message("chem")
	}
	
	isProcessing = true;
	abstract_interact.item.in_purg = true; 
	interacts = false;
}



if ((obj_player.state_machine.state_name == "Transition")) {
	if (isProcessing) instance_destroy(bubbles)
	isProcessing = false
}
