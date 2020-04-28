/// @description Insert description here
// You can write your code in this editor


with (trapd) {
	if open {
		skeleton_animation_set("Closing");
		open = false;
		//mask_index = spr_trapDoor;
		solid = true;
	}else {
		skeleton_animation_set("Opening");
		open = true;
		solid = false;
		//mask_index = spr_trapDoorDepth;
	}
}

