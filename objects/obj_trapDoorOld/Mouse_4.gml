/// @description Insert description here
// You can write your code in this editor




switch (open) {
	case true:
		sprite_index = spr_trapDoor;
		open = false;
		//solid = true;

		break;
	case false:
		sprite_index = spr_trapDoorOpen;
		open = true;
		//solid = false;
		break;
	}