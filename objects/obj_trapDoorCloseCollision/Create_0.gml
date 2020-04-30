/// @description Insert description here
// You can write your code in this editor
trapd = instance_create_layer(x,y,"Instances",obj_trapDoor);

//with (trapd) {}
if (openOnStart){
	with(trapd){
		open = true;
		solid = false;
		mask_index = spr_trapDoor;
		}
	}