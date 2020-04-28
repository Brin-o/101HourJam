/// @description Insert description here
// You can write your code in this editor
if(shake){
	camera_set_view_pos(view_camera[0], 
		view_x + random_range(-range, range), 
		view_y + random_range(-range, range));
} else {
	camera_set_view_pos(view_camera[0],
		view_x, view_y);
}