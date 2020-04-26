/// moveSpeed (pixelsPerSecond)
/// @description Frame indipendent movement
/// @param pixelsPerSecond 

var pixelsPerSecond = [argument0];
var timePassed = delta_time / 1000000;
var pixelsThisFrame = pixelsPerSecond * timePassed;