/// @description Insert description here
// You can write your code in this editor
//draw_rectangle()

//draw_rectangle_color(0,0,1280,720,c_white, 0,c_black,0,true);



draw_set_alpha(alpha);

draw_set_colour(c_black);

draw_rectangle(0,0,room_width,room_height,-1);

draw_set_alpha(1); //reset alpha value so it doesn't mess with other draw events

if isBlack {
draw_set_color(c_white);
draw_set_font(fnt_ready);
draw_set_alpha(textAlpha);
draw_set_halign(fa_center);
draw_text(room_width/2, 64,"Thank you for playing The Last Mummy!");
draw_text(room_width/2,room_height/2 - 64,"Made for the 101 Hour Game Jam by.");
draw_text(room_width/2,room_height/2,"Derek");
draw_text(room_width/2,room_height/2 + 64,"Brin");
draw_text(room_width/2,room_height/2 + 128,"Vita");
draw_set_alpha(1);
}