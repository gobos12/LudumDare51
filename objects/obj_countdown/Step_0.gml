/// @description Insert description here
// You can write your code in this editor

step_count += 1;


if(displayTime == 0){
	totalTime += forwardTime;
	forwardTime = 0;
	step_count = 0;
	switch (obj_player.state_machine.state_name) {
		case "10":
			initialTime = 1 * INTERVAL;
		break;
	
		case "20":
			initialTime = 2 * INTERVAL;
		break;
	
		case "30":
			initialTime = 3 * INTERVAL;
		break;
	}
}


		

forwardTime = step_count / room_speed;
gameTime = initialTime - forwardTime;
displayTime = ceil(gameTime / (INTERVAL/10));

if (displayTime == (gameTime / (INTERVAL/10)) && obj_player.state_machine.state_name != "Transition")
	audio_play_sound(Ticking, 18, false, .3)
	
if (obj_player.state_machine.state_name == "Transition") {
	displayTime = 0
	playSound = true
}
else{
	playSound = false
}

function getTime() {
	return gameTime
}
function getDisplayTime() {
	return displayTime
}
function getForwardSeconds() {
	return floor(forwardTime);
}

if(playSound)
	audio_play_sound(snd_reset, 55, false, 1)

//show_debug_message("forward time = " + string(forwardTime)
