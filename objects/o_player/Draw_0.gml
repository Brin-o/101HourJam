/// @description Insert description here
// You can write your code in this editor

switch (animationState) {
	case "IDLE":
		sprite_index = s_playerIdle;
		break;
	case "WALK":
		sprite_index = s_playerWalk;
}

draw_sprite_ext(sprite_index, image_index, x, y , squish_x, squish_y, image_angle, image_blend, image_alpha);