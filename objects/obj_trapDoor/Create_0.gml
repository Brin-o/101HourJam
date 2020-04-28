/// @description Insert description here
// You can write your code in this editor
skeleton_animation_set("Closed")
open = false;
//createCheck = false;


//Smooth Transitions
skeleton_animation_mix("Opening", "Closing", 0.3);
skeleton_animation_mix("Closing", "Opening", 0.3);

