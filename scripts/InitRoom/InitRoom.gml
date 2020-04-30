/// InitRoom (trapNum, lvlNum)
/// @description InitRoom (trapNum, lvlNum)
/// @param trapNum
/// @param lvlNum
var _trapNum = argument0;
var _lvl = argument1;


global.lv = _lvl;


if(instance_number(o_gameManager) == 0){
	instance_create_layer( 0 , 0 ,"Instances", o_gameManager );
}
if(instance_number(o_cameraManager) == 0){
	instance_create_layer( 0 , 0 ,"Instances", o_cameraManager );
}

global.trapDoorNum = 0;
global.trapDoorNum = _trapNum;
