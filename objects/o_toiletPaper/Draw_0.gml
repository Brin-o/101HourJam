/// @description Insert description here
// You can write your code in this editor
if global.win {
	draw_sprite(sprite_index, image_index, x, y);
	depth = -90;
	image_alpha = 1;
}
else if !global.win {
	draw_sprite(sprite_index, image_index, x, y);
	depth = -90;
	image_alpha = 1;
}