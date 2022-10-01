/// @description Insert description here
// You can write your code in this editor

step_count += 1;

function resetForwardTime () {
	totalTIme += forwardTime;
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
	
		default:
			initialTime = 1 * INTERVAL;
		break;
	}
}


		

forwardTime = floor(step_count / room_speed);
gameTime = initialTime - forwardTime;
displayTime = floor(gameTime / (INTERVAL/10));

function getTime() {
	return gameTime
}
function getDisplayTime() {
	return displayTime
}


