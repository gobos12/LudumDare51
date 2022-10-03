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
	instance_create_layer(1280/2, 720/2, "Items_In_Use", obj_transition)
	
	if(puzzlesFinished == 0) obj_player.state_machine.state_name = "10"
	if(puzzlesFinished == 1) obj_player.state_machine.state_name = "20"
	if(puzzlesFinished == 2) obj_player.state_machine.state_name = "30"
	
	puzzlesFinished = 0;
	puzzlesDeactivated = 0;
	
}

show_debug_message("finished = " + string(puzzlesFinished))

