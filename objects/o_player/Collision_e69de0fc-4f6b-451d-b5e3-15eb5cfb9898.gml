/// @description Insert description here
// You can write your code in this editor
if(!other.hit){
	audio_play_sound(snd_toolPickup, 1, false);
	other.hit = true;
	global.trapDoorNum ++;
}