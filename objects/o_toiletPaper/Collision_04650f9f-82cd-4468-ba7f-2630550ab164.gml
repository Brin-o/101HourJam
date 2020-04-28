if (!hit) {
	hit = true;
	TweenEasyRotate(0, 360, 0, 40, EaseInOutQuad);
	TweenEasyScale(1, 1, 1.5, 1.5, 0, 20, EaseInElastic);
	TweenEasyFade(image_alpha, 0, 10, 30, EaseInOutQuad);
}