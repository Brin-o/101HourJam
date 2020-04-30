/// @description Insert description here
// You can write your code in this editor

//Animation transitions
switch (spikesDown) {
	case true:
		if alwaysOn {
			skeleton_animation_set("Spikes Up");
			solid = true;
			audio_play_sound(snd_spikes, 1, false);
			moveCheck = true;
			spikesDown = false;
			break;
		}
		if (global.gameSpeed > 0) {
			skeleton_animation_set("Spikes Up");
			solid = true;
			audio_play_sound(snd_spikes, 1, false);
			moveCheck = true;
			spikesDown = false;
			break;
		}else moveCheck = true;
		break;
	case false:
		if alwaysOn {
			skeleton_animation_set("Spikes Down");
			audio_play_sound(snd_spikes, 1, false);
			moveCheck = true;
			spikesDown = true;
			break;
		}
		if (global.gameSpeed > 0) {
			skeleton_animation_set("Spikes Down");
			audio_play_sound(snd_spikes, 1, false);
			moveCheck = true;
			spikesDown = true;
			break;	
		}else moveCheck = true;
		break;
}
	