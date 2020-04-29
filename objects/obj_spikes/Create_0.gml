/// @description Insert description here
// You can write your code in this editor

moveCheck = false;
spikesDown = true;

//Set start animation and time between transitions.

//spikeTime = 240
//skeleton_animation_set("Spikes Down Stay")
//alarm_set(0, spikeTime);


//Setup for title screen
if global.lv == 0 {
	spikeTime = 0;
	//alarm_set(0, spikeTime);
}else {
	spikeTime = 240;
	skeleton_animation_set("Spikes Down Stay")
	alarm_set(0, spikeTime);
}
