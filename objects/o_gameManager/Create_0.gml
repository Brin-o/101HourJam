/// @description Insert description here
// You can write your code in this editor

roomScore = 0;
global.gameSpeed = 0;
global.lv = 0;
global.trapDoorNum = 0;

//Amount of trap doors per level;

switch (global.lv) {
	case 0: global.trapDoorNum = 2;
	break;
	case 1: global.trapDoorNum = 3;
	break;
	case 2: global.trapDoorNum = 2;
	break;
	case 3: global.trapDoorNum = 3;
	break;
	case 4: global.trapDoorNum = 3;
	break;
	case 5: global.trapDoorNum = 3;
	break;
	case 6: global.trapDoorNum = 3;
	break;
	case 7: global.trapDoorNum = 3;
	break;
	case 8: global.trapDoorNum = 3;
	break;
	case 9: global.trapDoorNum = 3;
	break;
	case 10: global.trapDoorNum = 3;
	break;
}

//Play Music
audio_play_sound(snd_music, 1, true);



//Title Screen spike setup
if global.lv == 0 {
	spike1 = instance_create_layer(416, 640, "Instances", obj_spikes);
	with(spike1) {
		var syncTime = 60
		skeleton_animation_set("Spikes Down Stay")
		depth = -90;
		spikeTime = syncTime;
		alarm_set(0,60);
	}
	spike2 = instance_create_layer(480, 640, "Instances", obj_spikes);
	with(spike2) {
		skeleton_animation_set("Spikes Down Stay")
		depth = -90;
		spikeTime = syncTime;
		alarm_set(0,70);
	}
	spike3 = instance_create_layer(544, 640, "Instances", obj_spikes);
	with(spike3) {
		skeleton_animation_set("Spikes Down Stay")
		depth = -90;
		spikeTime = syncTime;
		alarm_set(0,80);
	}
	spike4 = instance_create_layer(608, 640, "Instances", obj_spikes);
	with(spike4) {
		skeleton_animation_set("Spikes Down Stay")
		depth = -90;
		spikeTime = syncTime;
		alarm_set(0,90);
	}
	spike5 = instance_create_layer(672, 640, "Instances", obj_spikes);
	with(spike5) {
		skeleton_animation_set("Spikes Down Stay")
		depth = -90;
		spikeTime = syncTime;
		alarm_set(0,100);
	}
	spike6 = instance_create_layer(736, 640, "Instances", obj_spikes);
	with(spike6) {
		skeleton_animation_set("Spikes Down Stay")
		depth = -90;
		spikeTime = syncTime;
		alarm_set(0,110);
	}
	spike7 = instance_create_layer(800, 640, "Instances", obj_spikes);
	with(spike7) {
		skeleton_animation_set("Spikes Down Stay")
		depth = -90;
		spikeTime = syncTime;
		alarm_set(0,120);
	}
	spike8 = instance_create_layer(864, 640, "Instances", obj_spikes);
	with(spike8) {
		skeleton_animation_set("Spikes Down Stay")
		depth = -90;
		spikeTime = syncTime;
		alarm_set(0,130);
	}
}