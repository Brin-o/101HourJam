/// MoveLoop(pixelsPerFrame, _xDir, _yDir)
/// @description MoveLoop(pixelsPerFrame, _xDir, _yDir) REQ: inversion (bool) & grv (float)
/// @param pixelsPerFrame
/// @param _xDir
/// @param _yDir

// THIS SCRIPT NEEDS THE VARIABLES "inversion" and "grv" from the object to work!

var pixelsPerFrame = argument0;
var _xDir = argument1;
var _yDir = argument2;


if (inversed){
	_xDir *= -1;
}

//check if a solid is below the player
if (place_free(x, y + 1))
	_yDir += grv;
else
	_yDir = 0;
	
var dir = point_direction(0, 0, _xDir, _yDir);

	
var movedSuccessfully = false;
for (var i = 0; i <= 90; i += 10) {
	
	//breaks the movement loop if directions are 0
	//super clunky but it gets the job done
	if(_xDir == 0 and _yDir == 0)
		break;
	
	for (var n = -1; n <= 1; n+=2) {
			
		var modifiedDir = (n*i) + dir;

		//movement script
		var xTarget = x + lengthdir_x(pixelsPerFrame , modifiedDir);
		var yTarget = y + lengthdir_y(pixelsPerFrame * _yDir, modifiedDir);
		
		//checks for free space in the direction
		if (place_free(xTarget, yTarget)){
			x = xTarget;
			y = yTarget;
			movedSuccessfully = true;
			break;
			
		}
		if (!place_free( x + (20 * _xDir), y) and _yDir == 0){
				//switched between inversed and normal
				if(inversed)
					inversed = false;
					
				else
					inversed = true;
					
			
				movedSuccessfully = true;
				break;
		}
	}
		
	if(movedSuccessfully){
		break;
	}
		
}
/*
var xTarget = x + lengthdir_x(pixelsPerFrame, dir);
var yTarget = y + lengthdir_y(pixelsPerFrame, dir);

if (place_free(xTarget, yTarget)){
	x = xTarget;
	y = yTarget;
}*/