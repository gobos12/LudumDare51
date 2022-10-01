/// @description Insert description here
// You can write your code in this editor

switch (obj_player.state_machine.state_name) {
  // When the player is between 0 and 10 seconds
  case "10":
    audio_sound_gain(mus_high, 1, 600);
	audio_sound_gain(mus_med, 0, 600);
	audio_sound_gain(mus_low, 0, 600);
  break;
    
  // When the player is between 10 and 20 seconds
  case "20":
    audio_sound_gain(mus_high, 0, 600);
	audio_sound_gain(mus_med, 1, 600);
	audio_sound_gain(mus_low, 0, 600);
  break;
    
  // When the player is between 20 and 30 seconds
  case "30":
    audio_sound_gain(mus_high, 0, 600);
	audio_sound_gain(mus_med, 0, 600);
	audio_sound_gain(mus_low, 1, 600);
  break;
    
  default:
    
  break;
    }

