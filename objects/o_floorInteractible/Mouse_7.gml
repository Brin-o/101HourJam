/// @description "Place" trapdoor
// You can write your code in this editor


//if (!trapdoor)
//{
//	TweenEasyRotate(0, 360, 0, 15, EaseInQuad)
//	TweenEasyScale(1,1, 1.3, 1.3, 0, 15, EaseInOutQuart, TWEEN_MODE_BOUNCE);
//	image_alpha = 0.5;
//	solid = false;
//	trapdoor = true;
//}

if !trapdoor and global.trapDoorNum >= 1 {
	audio_play_sound(snd_doorCreate, 1, false)
	newTrap = instance_create_layer(x ,y,"Instances",obj_trapDoorCloseCollision);
	with newTrap {
		//open = true;
		//createCheck = true;
	}
	global.trapDoorNum -= 1;
	instance_destroy();
} else if (global.trapDoorNum <1) {
	squish_x = 0.5;
	audio_play_sound(snd_noBuild, 1, false);
}
