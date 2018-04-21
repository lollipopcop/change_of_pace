/// @description Insert description here
// You can write your code in this editor

if (state = "room_move" ) {

	x += 1;

	var view_matrix = matrix_build_lookat(x, y, -10, x, y, 0, 0, 1, 0);
	camera_set_view_mat(camera, view_matrix);

}

if (x >= room_width-240) {
	state = "room_end";	
}