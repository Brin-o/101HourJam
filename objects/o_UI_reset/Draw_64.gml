/// @description Insert description here
// You can write your code in this editor


squish_x = lerp( squish_x, (1 + lengthdir_x(0.05, current_time * 0.15)), 0.075 );
squish_y = 1/(squish_x); //1 + lengthdir_y(0.025, current_time * 0.25);

image_angle = 0;

if (squish_x > 1)
	squish_xVel = lerp(squish_xVel, squish_xVel - 0.1, 0.5);
else if (squish_x <1)
	squish_xVel = lerp(squish_xVel, squish_xVel + 0.1, 0.5);

var angleCap = 1.5;
squishyAngle = image_angle + squish_xVel;
squishyAngle = clamp(squishyAngle, -angleCap, angleCap);

draw_sprite_ext( sUI_reset , 1, x, y, squish_x, squish_y, squishyAngle, image_blend, image_alpha );
