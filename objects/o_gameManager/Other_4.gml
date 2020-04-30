/// @description Reset score
roomScore = 0;
roomScoreMax = instance_number(o_toiletPaper);

if(global.lv != 0)
	global.gameSpeed = 0;
else
	global.gameSpeed = 1;
	
placableTraps = false;
if (global.trapDoorNum != 0)
	placableTraps = true;
	
	
//play background sounds
audio_play_sound(snd_background, 1, false);