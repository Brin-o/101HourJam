/// @description Insert description here
// You can write your code in this editor


if keyboard_check(vk_space) {
	squish_x = 3;
	squish_xVel = 0;
}

//squish_x = 1 + lengthdir_x(0.5, current_time * 0.1 );
//squish_x = lerp(squish_x, 1, 0.35);
var _sxprev = sign (1- squish_x);
squish_x += squish_xVel;
squish_y = 1 / (squish_x);

squish_xVel *= 0.9;

if (_sxprev != sign(1-squish_x) && abs(squish_xVel) < 0.1)
{
	squish_xVel = 0;
	squish_x = 1;
}

if (squish_x > 1)
	squish_xVel -= 0.05;
else if (squish_x < 1)
	squish_xVel += 0.05;

draw_sprite_ext(sprite_index, image_index, x, y + (sprite_height*0.5 - sprite_height*squish_y), squish_x, squish_y, image_angle, image_blend, image_alpha);