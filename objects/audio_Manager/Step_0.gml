/// @description Insert description here
// You can write your code in this editor



if(obj_countdown.displayTime <= 5)
	audio_sound_gain(snd_alarm, .25,10);


else if(obj_countdown.displayTime <= 10 && obj_countdown.displayTime > 5)
{
	audio_sound_gain(mus_high, 10, 600);
	audio_sound_gain(mus_med, 0, 600);
	audio_sound_gain(mus_low, 0, 600);
} else if(obj_countdown.displayTime <= 20 && obj_countdown.displayTime >= 10)
{
	audio_sound_gain(mus_high, 0, 600);
	audio_sound_gain(mus_med, 10, 600);
	audio_sound_gain(mus_low, 0, 600);
}
else if(obj_countdown.displayTime > 20)
{
	audio_sound_gain(mus_high, 0, 600);
	audio_sound_gain(mus_med, 0, 600);
	audio_sound_gain(mus_low, 10, 600);
}



