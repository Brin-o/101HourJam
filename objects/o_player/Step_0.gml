/// @description Movement code
// You can write your code in this editor

//frame indipendence setup
var pixelsPerSecond = 100; //change this to affect the speed
var timePassed = delta_time / 1000000;
var pixelsThisFrame = pixelsPerSecond * timePassed;


//keyboard_check(ord("D")) - keyboard_check(ord("A"));
var yDir = grv *  global.gameSpeed;
var xDir = 1 * global.gameSpeed;

if (xDir != 0 or yDir != 0) {
	
	MoveLoop( pixelsThisFrame, xDir, yDir);

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

//Bounce 
//TweenEasyScale(1, 1, 2, 2, 0, 15, EaseInOutQuad, TWEEN_MODE_BOUNCE);

if inversed and bump {
	TweenEasyScale(1, 1, 2, 2, 0, 15, EaseInOutQuad, TWEEN_MODE_BOUNCE);
	
	bump = false;
}
//if !inversed and !bump {
//	TweenEasyScale(1, 1, 2, 2, 0, 15, EaseInOutQuad, TWEEN_MODE_BOUNCE);
//	bump = true;
//}
	
//Bounce when hitting walls
//if inversed and bumpCheck {
//	bump = true;
//}
//if bump {
//	TweenEasyScale(1, 1, 2, 2, 0, 15, EaseInOutQuad, TWEEN_MODE_BOUNCE);
//	bumpCheck = false;
//}
//TweenEasyScale(35, 35, 1.5, 1.5, 0, 60, EaseOutBounce)}
//	if growCheck and image_xscale < 1.2 {
//		image_xscale += 0.05;
//		image_yscale = image_xscale;
//		if image_xscale >= 1.2 {
//			growCheck = false;
//		}
//	}
//	if !growCheck and image_xscale != 1 { 
//		image_xscale = 1;
//		image_yscale = image_xscale;
//		bump = false;
//		bumpCheck = false;
//	}
//}
/*OLD BOUNCE CODE*/

//Bounce when hitting walls
//if inversed and bumpCheck {
//	bump = true;
//}
//if bump {
//TweenEasyScale(35, 35, 1.5, 1.5, 0, 60, EaseOutBounce)}
//	if growCheck and image_xscale < 1.2 {
//		image_xscale += 0.05;
//		image_yscale = image_xscale;
//		if image_xscale >= 1.2 {
//			growCheck = false;
//		}
//	}
//	if !growCheck and image_xscale != 1 { 
//		image_xscale = 1;
//		image_yscale = image_xscale;
//		bump = false;
//		bumpCheck = false;
//	}
//}

//if inversed and bumpCheck {
//	TweenEasyScale(1, 1, 2, 2, 0, 15, EaseInOutQuad, TWEEN_MODE_BOUNCE);
//	bumpCheck = false;
//	bumpCheck2 = true;
//}
//	bump = true;
//}
//if bump {
//	TweenEasyScale(1, 1, 2, 2, 0, 15, EaseInOutQuad, TWEEN_MODE_BOUNCE);
//	bump = false;
//	bumpCheck = false;
//	bumpCheck2 = true;
//}
//if !inversed and bumpCheck2 {
//	TweenEasyScale(1, 1, 2, 2, 0, 15, EaseInOutQuad, TWEEN_MODE_BOUNCE);
//	bumpCheck = true;
//	bumpCheck2 = false;
//}

//Depth when falling through door
if place_meeting(x,y, obj_trapDoor) { depth = 95;}else depth = -95;
