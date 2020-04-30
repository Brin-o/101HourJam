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

if (squish_x > 1)
	squish_xVel -= 0.05;
else if (squish_x < 1)
	squish_xVel += 0.05;

var angleCap = 1.5;
squishyAngle = image_angle + squish_xVel;
squishyAngle = clamp(squishyAngle, -angleCap, angleCap);



draw_sprite_ext(sprite_index, image_index, x, y , squish_x, squish_y, image_angle, image_blend, image_alpha);
else if !global.win {
	draw_sprite(sprite_index, image_index, x, y);
	depth = -90;
	image_alpha = 1;
}