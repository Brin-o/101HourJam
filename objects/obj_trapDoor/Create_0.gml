/// @description Insert description here
// You can write your code in this editor
skeleton_animation_set("Closed")
open = false;

depth = -90;

//Smooth Transitions
skeleton_animation_mix("Opening", "Closing", 0.3);
skeleton_animation_mix("Closing", "Opening", 0.3);


//Squish Set up
squish_x = 1;
squish_y = 1;

squish_xVel = 0;
squish_yVel = 0;

squish_x = 0.3;

audio_play_sound(snd_selectWiggly, 2, false);