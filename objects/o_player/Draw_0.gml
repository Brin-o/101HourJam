/// @description Insert description here
// You can write your code in this editor
#region Animation switching
switch (animationState) {
	case "IDLE":
		sprite_index = s_playerIdle;
		break;
	case "WALK":
		sprite_index = s_playerWalk;
}#endregion

var _sxprev = sign (1- squish_x);
squish_x = lerp(squish_x, 1, 0.2);
squish_y = lerp(squish_y, 1, 0.2); // 1 / (squish_x);
/*
squish_xVel *= 0.9;

if (_sxprev != sign(1-squish_x) && abs(squish_xVel) < 0.1)
{
	squish_xVel = 0;
	squish_x = 1;
}

//draw_sprite_ext(sprite_index, image_index, x, y , squish_x, squish_y, image_angle, image_blend, image_alpha);


//Changes sprite direction
if !inversed {
	draw_sprite_ext(sprite_index, image_index, x, y , squish_x, squish_y, image_angle, image_blend, image_alpha);
}

if inversed {
	draw_sprite_ext(sprite_index, image_index, x, y , revDir, squish_y, image_angle, image_blend, image_alpha);
}