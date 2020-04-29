/// @description Insert description here
// You can write your code in this editor

moveCheck = false;
spikesDown = true;

//Set start animation and time between transitions.




spikeTime = 240;
skeleton_animation_set("Spikes Down Stay")
alarm_set(0, spikeTime);

//spawn an empty block behind it
instance_create_depth(x, y, 10 , obj_spikeBG);
