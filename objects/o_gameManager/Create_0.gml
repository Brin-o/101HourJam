/// @description Insert description here
// You can write your code in this editor

roomScore = 0;
if(global.lv != 0)
	global.gameSpeed = 0;
else
	global.gameSpeed = 1;

global.trapDoorNum = 0;



//Play Music
audio_play_sound(snd_music, 1, true);



global.win = false;