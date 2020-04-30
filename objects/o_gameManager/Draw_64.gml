/// @description Insert description here
// You can write your code in this editor

var offSet = 20;

draw_set_font(fnt_ready);
draw_set_halign(fa_left);
//Trap Door Number if they exist
if (placableTraps)
{
	draw_text((offSet * 2), offSet, string("Trap Doors Left: ") + string(global.trapDoorNum));
}
//Level Number
draw_set_halign(fa_center);
draw_text(room_width/2, offSet, string("Level: ") + string(global.lv));

//Draw toilet paper amount/max if it exists
draw_set_halign(fa_right);
if(roomScoreMax != 0)
{
	draw_text(room_width - (offSet * 2) , offSet, 
		string("Toilet paper: ") + string(roomScore) + " / " + string(roomScoreMax));
}

