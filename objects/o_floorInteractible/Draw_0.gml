/// @description Insert description here
// You can write your code in this editor


var _sxprev = sign (1 - squish_x);

squish_x += squish_xVel;
squish_y = 1 / (squish_x);

squish_xVel *= 0.9;

if (_sxprev != sign(1-squish_x) && abs(squish_xVel) < 0.25)
{
	squish_xVel = 0;
	squish_x = 1;
}

if (squish_x > 1)
	squish_xVel -= 0.1;
else if (squish_x < 1)
	squish_xVel += 0.1;



draw_sprite_ext(sprite_index, image_index, x, y , squish_x, squish_y, image_angle, image_blend, image_alpha);