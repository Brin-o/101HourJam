/// @description Insert description here
// You can write your code in this editor

//frame indipendence setup
var pixelsPerSecond = 100; //change this to affect the speed
var timePassed = delta_time / 1000000;
var pixelsThisFrame = pixelsPerSecond * timePassed;


//keyboard_check(ord("D")) - keyboard_check(ord("A"));
var yDir = keyboard_check(ord("S")) - keyboard_check(ord("W")) + grv;

if (xDir != 0 or yDir != 0) {
	
	MoveLoop( pixelsThisFrame, xDir, yDir);
	/*var xTarget = x + lengthdir_x(pixelsThisFrame, xDir);
	//var yTarget = y + lengthdir_y(pixelsThisFrame, modifiedDir);
	TweenEasyMove(x, y, xTarget, y, 0, 1, EaseLinear);*/

}


 

//Damage
if dam {
	grv = 0;
	xDir = 0;
	if image_xscale > 0 {
		image_xscale -= 0.02;
		image_yscale = image_xscale;
	}
	else {
		instance_create_layer(x,y,"Instances",obj_explode);
		instance_destroy();
	}
}

//Bounce when hitting walls
if inversed and bumpCheck {
	bump = true;
}
if bump {
	if growCheck and image_xscale < 1.2 {
		image_xscale += 0.05;
		image_yscale = image_xscale;
		if image_xscale >= 1.2 {
			growCheck = false;
		}
	}
	if !growCheck and image_xscale != 1 { 
		image_xscale = 1;
		image_yscale = image_xscale;
		bump = false;
		bumpCheck = false;
	}
}
