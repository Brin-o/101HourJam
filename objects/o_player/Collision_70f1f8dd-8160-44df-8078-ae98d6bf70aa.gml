/// @description Insert description here
// You can write your code in this editor
if winCheck{
	winCheck = false;
	//walkCheck = false;
	global.gameSpeed = 0;
	sprite_index = s_playerIdle;
	other.sprite_index = s_coffingAnimated;
	//with (o_coffin) {
	//sprite_index = s_coffingAnimated
	//}
	audio_play_sound(snd_coffin, 1, false);
	alarm_set(1,60);
}