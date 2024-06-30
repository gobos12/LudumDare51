/// @description Insert description here
// You can write your code in this editor

if(isOpenable){
	if(!opened) obj_tm.image_index = 4
	else if(opened) {
		if(!gear0Placed && !gear1Placed) obj_tm.image_index = 0
		else if(gear0Placed && !gear1Placed) obj_tm.image_index = 2
		else if(!gear0Placed && gear1Placed) obj_tm.image_index = 1
		else if(gear0Placed && gear1Placed) obj_tm.image_index = 3
	}

	opened = !opened
}