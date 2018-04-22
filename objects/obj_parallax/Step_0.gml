/// @description move backgrounds to create parallax effect

var camera_offset = 240;
var sun_offset = 400;

var layer_front = layer_get_id("parallax_front");
var layer_middle = layer_get_id("parallax_middle");
var layer_back = layer_get_id("parallax_back");

layer_x(layer_front, lerp(0, obj_camera.x - camera_offset, 0.75));
layer_x(layer_middle, lerp(0, obj_camera.x - camera_offset, 0.95));
layer_x(layer_back, lerp(0, obj_camera.x - camera_offset + sun_offset, 0.98));