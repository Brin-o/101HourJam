/// @description Insert description here
// You can write your code in this editor


with (trapd) {
	if open and global.gameSpeed == 0{
		skeleton_animation_set("Closing");
		open = false;
		solid = true;
		mask_index = spr_trapDoor;
		TweenEasyScale(1, 1, 1.2, 1.2, 0, 10, EaseInOutExpo, TWEEN_MODE_BOUNCE);
		ScreenShake(4);
	}else {
		if(global.gameSpeed == 0) {
			skeleton_animation_set("Opening");
			open = true;
			solid = false;
			mask_index = spr_trapDoorDepth;
			TweenEasyScale(1, 1, 1.2, 1.2, 0, 10, EaseInOutExpo, TWEEN_MODE_BOUNCE);
			ScreenShake(4);
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