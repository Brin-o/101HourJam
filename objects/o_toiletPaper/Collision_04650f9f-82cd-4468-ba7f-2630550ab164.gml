if (!hit) {
	hit = true;
	TweenEasyRotate(0, 360, 0, 60, EaseInBack);
	TweenEasyFade(image_alpha, 0, 10, 30, EaseInOutQuad);
	TweenEasyScale(1, 1, 1.3, 1.3, 0, 20 , EaseInElastic);
}