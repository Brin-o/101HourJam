/// @description Insert description here
// You can write your code in this editor
/*if (global.gameSpeed == 0)
	exit;*/
//Animation transitions
switch (spikesDown) {
	case true:
		solid = true;
		skeleton_animation_set("Spikes Up");
		moveCheck = true;
		spikesDown = false;
		break;
	case false:
		skeleton_animation_set("Spikes Down");
		moveCheck = true;
		spikesDown = true;
		break;
}
		