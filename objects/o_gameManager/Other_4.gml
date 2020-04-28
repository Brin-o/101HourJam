/// @description Reset score
roomScore = 0;
roomScoreMax = instance_number(o_toiletPaper);
global.gameSpeed = 0;

placableTraps = false;
if (global.trapDoorNum != 0)
	placableTraps = true;