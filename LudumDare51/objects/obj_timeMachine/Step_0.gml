/// @description Insert description here
// You can write your code in this editor

state_machine.step();

switch (obj_player.state_machine.state_name) {
  // When the player is between 0 and 10 seconds
  case "10":
	layer_set_visible("bg_10sec", true)
	layer_set_visible("bg_20sec", true)
	layer_set_visible("L_Assets", false)
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


