/// @description Movement code
// You can write your code in this editor

//frame indipendence setup
var pixelsPerSecond = 100; //change this to affect the speed
var timePassed = delta_time / 1000000;
var pixelsThisFrame = pixelsPerSecond * timePassed;


//keyboard_check(ord("D")) - keyboard_check(ord("A"));
var yDir = grv *  global.gameSpeed;
var xDir = 1 * global.gameSpeed;

//Movement and Item Collision
if instance_exists(o_toiletPaper){ 
	if (xDir != 0 or yDir != 0) and !dam and !o_toiletPaper.hit{
		animationState = "WALK";
		MoveLoop( pixelsThisFrame, xDir, yDir);
	}
	else
	animationState = "IDLE";
}
else if (xDir != 0 or yDir != 0) and !dam {
	animationState = "WALK";
	MoveLoop( pixelsThisFrame, xDir, yDir);
}
else
	animationState = "IDLE";


//Kill Player when damage is taken
if dam and damCheck{
		damCheck = false;
		TweenEasyRotate(0, 2160, 0, deathTime, EaseInQuad)
		alarm_set(0,deathTime);
	}


//Depth when falling through door
if place_meeting(x,y, obj_trapDoor){
	depth = 95;
}else {depth = -95;}
