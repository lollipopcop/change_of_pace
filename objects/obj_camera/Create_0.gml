/// @description Insert description here
// You can write your code in this editor

//set the object to be in the middle of the room at the start
y = room_height / 2;
x = camera_get_view_width(view_camera[0]) / 2 ;

#region //setup camera
camera = camera_create();

var view_matrix = matrix_build_lookat(x, y, -10, x, y, 0, 0, 1, 0);
var projection_matrix = matrix_build_projection_ortho(480, 270, 1, 10000);

camera_set_view_mat(camera, view_matrix);
camera_set_proj_mat(camera, projection_matrix);

view_camera[0] = camera;

state = "room_move";

#endregion
