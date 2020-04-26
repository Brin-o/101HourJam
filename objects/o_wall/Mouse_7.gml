/// @description "Place" trapdoor
// You can write your code in this editor
if (!trapdoor)
{
	TweenEasyRotate(0, 360, 0, 15, EaseInQuad)
	TweenEasyScale(1,1, 1.3, 1.3, 0, 15, EaseInOutQuart, TWEEN_MODE_BOUNCE);
	image_alpha = 0.5;
	solid = false;
	trapdoor = true;
}
