/// @description Insert description here
// You can write your code in this editor

switch (buttonState) {
    case "PLAY":
        var sprite = sUI_play;
		//gameplay dependant things
		global.gameSpeed = 0;
        break;
		
    case "PAUSE":
        var sprite = sUI_pause;
		global.gameSpeed = 1;
		break;
}


squish_x = lerp( squish_x, (1 + lengthdir_x(0.05, current_time * 0.2)), 0.1 );
squish_y = 1/(squish_x); //1 + lengthdir_y(0.025, current_time * 0.25);


if (squish_x > 1)
	squish_xVel = lerp(squish_xVel, squish_xVel - 0.1, 0.5);
else if (squish_x <1)
	squish_xVel = lerp(squish_xVel, squish_xVel + 0.1, 0.5);

var angleCap = 3;
squishyAngle = image_angle + squish_xVel;
squishyAngle = clamp(squishyAngle, -angleCap, angleCap);

draw_sprite_ext( sprite , 1, x, y, squish_x, squish_y, squishyAngle, image_blend, image_alpha );
