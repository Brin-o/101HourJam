/// @description Insert description here
// You can write your code in this editor


draw_set_halign(fa_left)
//Trap Door Number
draw_text(10, 0, string("Trap Doors Left: ") + string(global.trapDoorNum));

//Level Number
draw_set_halign(fa_center);
draw_text(room_width/2, 0, string("Level: ") + string(global.lv));
draw_text(room_width/2-50, 124, string("Press R to restart"));

//Draw toilet paper amount/max
draw_set_halign(fa_right);
draw_text(room_width - 10 , 0, 
		string("Toilet paper: ") + string(roomScore) + " / " + string(roomScoreMax));


