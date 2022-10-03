/// @description Insert description here
// You can write your code in this editor

state_machine.step();

switch (obj_player.state_machine.state_name) {
  // When the player is between 0 and 10 seconds
  case "10":
	layer_set_visible("bg_10sec", true)
	layer_set_visible("bg_20sec", true)
  break;
    
  // When the player is between 10 and 20 seconds
  case "20":
	layer_set_visible("bg_10sec", false)
	layer_set_visible("bg_20sec", true)
  break;
    
  // When the player is between 20 and 30 seconds
  case "30":
	layer_set_visible("bg_10sec", false)
	layer_set_visible("bg_20sec", false)
  break;
  
}

if (obj_countdown.gameTime == 1)
{
	show_debug_message("puzzles finished = " + string(puzzlesFinished))
	show_debug_message("puzzles deactive = " + string(puzzlesDeactivated))
	show_debug_message("code = " + string(codeEntered))
	
	
	instance_create_layer(1280/2, 720/2, "Items_In_Use", obj_transition)
	obj_player.state_machine.state_name = "Transition"
	alarm[0] = room_speed * 3;
	
	
}

if(codeEntered && puzzlesDeactivated == 2){
		room_goto(end_room)
	}



