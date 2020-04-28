/// @description Insert description here
// You can write your code in this editor

if (moving)
{
	if moveUp and moveCheck{
		TweenEasyMove(x, y, x, y-32, 0, 80, EaseInQuad);
		alarm_set(0,300);
		moveCheck = false;
	}

	if !moveUp and moveCheck{
		TweenEasyMove(x, y, x, ystart, 0, 80, EaseInQuad);
		alarm_set(0,300);
		moveCheck = false;
	}
}


//TweenEasyRotate(0, 2160, 0, 60, EaseInQuad)