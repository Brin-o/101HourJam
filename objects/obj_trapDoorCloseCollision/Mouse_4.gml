/// @description Insert description here
// You can write your code in this editor


with (trapd) {
	if open {
		if (global.gameSpeed == 0 or global.lv == 1) {
		skeleton_animation_set("Closing");
		audio_play_sound(snd_doorClose, 1, false);
		open = false;
		solid = true;
		mask_index = spr_trapDoor;
		//trapd.TweenEasyScale(1, 1, 1.2, 1.2, 0, 10, EaseInOutExpo, TWEEN_MODE_BOUNCE);
		squish_x = 1.4;
		}
	} else {
		if(global.gameSpeed == 0 or global.lv == 0) {
			skeleton_animation_set("Opening");
			audio_play_sound(snd_doorOpen, 1, false);
			open = true;
			solid = false;
			mask_index = spr_trapDoorDepth;
			//trapd.TweenEasyScale(1, 1, 1.2, 1.2, 0, 10, EaseInOutExpo, TWEEN_MODE_BOUNCE);
			squish_x = 0.6;
		}
	}
}


//if open and global.gameSpeed == 0{
//	skeleton_animation_set("Closing");
//	open = false;
//	solid = true;
//	mask_index = spr_trapDoor;
//	TweenEasyScale(1, 1, 1.2, 1.2, 0, 10, EaseInOutExpo, TWEEN_MODE_BOUNCE);
//	ScreenShake(4);
	
//} else {
//	if(global.gameSpeed == 0){
//		skeleton_animation_set("Opening");
//		open = true;
//		solid = false;
//		mask_index = spr_trapDoorCollision;
//		TweenEasyScale(1, 1, 1.2, 1.2, 0, 10, EaseInOutExpo, TWEEN_MODE_BOUNCE);
//		ScreenShake(4);
//	}
//}