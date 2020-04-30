/// @description Insert description here
// You can write your code in this editor

//Animation transitions
switch (spikesDown) {
	case true:
		if alwaysOn {
			skeleton_animation_set("Spikes Up");
			solid = true;
			if global.lv == 0 {audio_play_sound(snd_spikesIntro, 1, false);
			}else{audio_play_sound(snd_spikes, 1, false);}
			//audio_play_sound(snd_spikes, 1, false);
			moveCheck = true;
			spikesDown = false;
			break;
		}
		if (global.gameSpeed > 0) {
			skeleton_animation_set("Spikes Up");
			solid = true;
			if global.lv == 0 {audio_play_sound(snd_spikesIntro, 1, false);
			}else{audio_play_sound(snd_spikes, 1, false);}
			//audio_play_sound(snd_spikes, 1, false);
			moveCheck = true;
			spikesDown = false;
			break;
		}else moveCheck = true;
		break;
	case false:
		if alwaysOn {
			skeleton_animation_set("Spikes Down");
			if global.lv == 0 {audio_play_sound(snd_spikesIntro, 1, false);
			}else{audio_play_sound(snd_spikes, 1, false);}
			//audio_play_sound(snd_spikes, 1, false);
			moveCheck = true;
			spikesDown = true;
			break;
		}
		if (global.gameSpeed > 0) {
			skeleton_animation_set("Spikes Down");
			if global.lv == 0 {audio_play_sound(snd_spikesIntro, 1, false);
			}else{audio_play_sound(snd_spikes, 1, false);}
			//audio_play_sound(snd_spikes, 1, false);
			moveCheck = true;
			spikesDown = true;
			break;	
		}else moveCheck = true;
		break;
}
	