/// @description Insert description here
// You can write your code in this editor

if !global.win{
	draw_set_halign(fa_left)
	//Trap Door Number if they exist
	if (placableTraps)
	{
		draw_text(10, 0, string("Trap Doors Left: ") + string(global.trapDoorNum));
	}
	//Level Number
	draw_set_halign(fa_center);
	draw_text(room_width/2, 10, string("Level: ") + string(global.lv));

	//Draw toilet paper amount/max if it exists
	draw_set_halign(fa_right);
	if(roomScore != 0)
	{
		draw_text(room_width - 10 , 0, 
			string("Toilet paper: ") + string(roomScore) + " / " + string(roomScoreMax));
	}
}
