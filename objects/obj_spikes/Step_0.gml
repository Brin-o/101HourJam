/// @description Insert description here
// You can write your code in this editor
//if global.lv != 0 {


	if moveCheck and alwaysOn {
		alarm_set(0, spikeTime);
		moveCheck = false;
	}
	else if (global.gameSpeed > 0) and moving {
		if moveCheck {
			alarm_set(0, spikeTime);
			moveCheck = false;
		}
	}else {
	    var frameNum = skeleton_animation_get_frames(skeleton_animation_get());
		skeleton_animation_set_frame(frameNum, -image_speed);
	}

//Kill player
if solid and place_meeting(x-2,y,o_player) or solid and place_meeting(x+2,y,o_player) {
	with(o_player) {
		if !dam {
			dam = true;
				//TweenEasyRotate(0, 2160, 0, 60, EaseInQuad)
		}
	}
}