/// @description Insert description here
// You can write your code in this editor


if open {
	skeleton_animation_set("Closing");
	open = false;
	solid = true;
	mask_index = spr_trapDoor;
}else {
	skeleton_animation_set("Opening");
	open = true;
	solid = false;
	mask_index = spr_trapDoorCollision;
}