/// @description Insert description here
// You can write your code in this editor


if moveCheck {
	alarm_set(0, spikeTime);
	moveCheck = false;
}

//Kill player
if solid and place_meeting(x-2,y,o_player) or solid and place_meeting(x+2,y,o_player){
	with(o_player) {
		if !dam {
			dam = true;
			//TweenEasyRotate(0, 2160, 0, 60, EaseInQuad)
		}
	}
}
